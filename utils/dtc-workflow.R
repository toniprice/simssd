# ============================================================================ #
# Workflow for rebuilding docs + site, testing/checking package and code quality
# DTC = Document | Test | Check

# ------------------------------------ #
# Interactive commands:
#   [Ctrl + Shift D]    rebuild docs    devtools::document([...])
#   [Ctrl + Shift + T]  run tests       devtools::test()
#   [Ctrl + Shift + E]  check package   devtools::check()

# ------------------------------------ #
# DTC = Document | Test | Check
#
# Tasks:
#   test            - Run tests
#   gp              - Run code check and goodpractice
#   docs            - Rebuild docs
#   localsite       - Rebuild local site
#   homepage        - Rebuild site's home page
#   style           - Tweak site's css
#   check           - Run R CMD CHECK
#   lint            - Run linter
#   all             - Run tests, R CMD CHECK & goodpractice; rebuild docs and
#                       local site

# The seed_val is used for initialising the seed so that random examples are
# reproducible.

run_dtc <- function(task_list = c("docs", "localsite"), seed_val = 10) {

  valid_tasks <- c(
    "check",
    "docs",
    "gp",
    "homepage",
    "lint",
    "localsite",
    "style",
    "test",
    "all"
  )

  # Check task for valid values
  stopifnot(length(setdiff(task_list, valid_tasks)) == 0)

  lapply(task_list, function(task) {

    if (task %in% c("test", "all")) {
      devtools::test()
    }

    if (task %in% c("check", "all")) {
      devtools::check()
    }

    if (task %in% c("lint")) {
      pkgload::load_all()
      lintr::lint_package()
    }

    if (task %in% c("gp", "all")) {
      gp_res <- goodpractice::goodpractice()
      print(gp_res)
    }

    if (task %in% c("docs", "all")) {
      # Rebuild the man files
      devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
      # Knit README.Rmd
      devtools::build_readme()
    }

    if (task %in% c("homepage")) {
      pkgdown::build_home_index()
      pkgdown::init_site()
    }

    if (task %in% c("style")) {
      pkgdown::init_site()
    }

    if (task %in% c("localsite", "all")) {
      # See also pkgdown::build_site_github_pages() which builds and pushes the
      # documentation website to github-pages (and also adds a .nojekyll file to
      # suppress rendering by Jekyll)

      # Note that GitHub actions is generally configured to automatically build
      # and publish the pkgdown site
      pkgdown::clean_site()
      pkgdown::build_site(seed = seed_val)
    }

  })
}

# ============================================================================ #
