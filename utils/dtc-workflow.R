# ============================================================================ #
# Workflow for rebuilding docs + site, testing/checking package and code quality
# DTC = Document | Test | Check

# ------------------------------------ #
# Interactive commands:
#   [Ctrl + Shift D]    rebuild docs    devtools::document([...])
#   [Ctrl + Shift + T]  run tests       devtools::test()
#   [Ctrl + Shift + E]  check package   devtools::check()

# Some useful functions when tweaking the website:
# > pkgdown::init_site()
# > pkgdown::build_home_index()
# > pkgdown::build_home_index(); pkgdown::init_site()

# To rebuild just the home page and the CSS:
#   > pkgdown::build_home_index(); pkgdown::init_site()
# (and then refresh your browser)

# When iterating on colours and other variables you only need to run:
#   > pkgdown::init_site() # => and refresh browser
# When iterating on fonts, you need to run:
#   > pkgdown::build_home_index(); pkgdown::init_site() # => and refresh browser

# ------------------------------------ #
# DTC = Document | Test | Check
#
# Tasks:
#   docslocalsite - Rebuild docs and local site (Default)
#   test          - Run tests
#   gp            - Run goodpractice code check
#   docs          - Rebuild docs
#   localsite     - Rebuild local site
#   homepage      - Rebuild site's home page
#   style         - Tweak site's css
#   check         - Run R CMD CHECK
#   testcheck     - Run tests and R CMD CHECK
#   lint          - Run linter
#   all           - Rebuild all docs/site, run tests, r cmd check & goodpractice

# The seed_val is used for initialising the seed so that random examples are
# reproducible.

run_dtc <- function(task = "docslocalsite", seed_val = 10) {

  task <- match.arg(
    task,
    c(
      "docslocalsite",
      "test",
      "gp",
      "docs",
      "localsite",
      "homepage",
      "style",
      "check",
      "testcheck",
      "lint",
      "all"
    )
  )

  if (task %in% c("docslocalsite", "all")) {
    devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
    devtools::build_readme()
    pkgdown::clean_site()
    pkgdown::build_site(seed = seed_val)
  }

  if (task %in% c("test", "all")) {
    devtools::test()
  }

  if (task %in% c("gp", "all")) {
    gp_res <- goodpractice::goodpractice()
    print(gp_res)
  }

  if (task %in% c("docs")) {

    # Rebuild the man files
    devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
    # Knit README.Rmd
    devtools::build_readme()

  } else if (task %in% c("localsite")) {

    # See also pkgdown::build_site_github_pages() which builds and pushes the
    # documentation website to github-pages (and also adds a .nojekyll file to
    # suppress rendering by Jekyll)

    # Note that GitHub actions is generally configured to automatically build
    # and publish the pkgdown site
    pkgdown::clean_site()
    pkgdown::build_site(seed = seed_val)

  } else if (task %in% c("homepage")) {

    pkgdown::build_home_index()
    pkgdown::init_site()

  } else if (task %in% c("style")) {

    pkgdown::init_site()

  } else if (task %in% c("check")) {

    devtools::check()

  } else if (task %in% c("testcheck")) {

    devtools::test()
    devtools::check()

  } else if (task %in% c("lint")) {

    pkgload::load_all()
    lintr::lint_package()

  }
}

# ============================================================================ #
