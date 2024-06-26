# ============================================================================ #
# Workflow for rebuilding docs + site, testing/checking package and code quality
# DTC = Document | Test | Check

# ------------------------------------ #
# Interactive commands:
#   [Ctrl + Shift + D]  Rebuild docs     devtools::document()
#   [Ctrl + Shift + T]  Test package     devtools::test()
#   [Ctrl + Shift + E]  Check package    devtools::check()
#   [Ctrl + Shift + L]  Load package     devtools::load_all()
#   [Ctrl + Shift + B]  Install package  'R CMD INSTALL --preclean --no-multiarch --with-keep.source </path/to/proj>'

# ------------------------------------ #
#' Helper for Document | Test | Check Tasks
#'
#' This function helps with running some common DTC (Document | Test | Check)
#' tasks during development.
#'
#' @param task_list A character vector specifying the tasks to run (see
#'   'Details' for more info). Default: `c("docs", "localsite")`, i.e. 'docs'
#'   and 'localsite'.
#' @param seed_val The `seed` parameter for passing to [pkgdown::build_site()].
#'   This is used for initialising the seed so that random examples are
#'   reproducible.
#' @param devel The `devel` parameter for passing to [pkgdown::build_site()].
#'
#' @details Available tasks:
#' <pre>
#'   test       - Run tests
#'   check      - Run R CMD CHECK
#'   lint       - Run linter (using config in .lintr at root of project)
#'   gp         - Run goodpractice::goodpractice code quality checks
#'   docs       - Rebuild man files and README
#'   homepage   - Rebuild site home page
#'   style      - Deploy site css after tweaking
#'   localsite  - Rebuild local site (**see note below**)
#'   all        - Run tasks gp, docs and local site
#' </pre>
#' *Note* re task 'localsite':
#' The pkgdown site would usually be built and published via a Github or Netlify
#' hook, so this task is intended for *local* preview prior to committing and
#' pushing to GitHub.
#'
#' @seealso [pkgdown::build_site_github_pages()] which builds and pushes the
#'   documentation website to github-pages (also adding a .nojekyll file to
#'   suppress rendering by Jekyll).<br/>
#'   Note that an alternative is to configure Netlify to automatically build and
#'   deploy a GitHub repo housing the website (on commit to that repo).
#'
#' @return NULL, invisibly.
#'
#' @examples
#' dtc()
#' dtc("style")
#' dtc("homepage")
#' dtc(c("lint", "docs"))
#' dtc("all")
#' dtc(task_list = "all", seed_val = 1)S
#' dtc(task_list = "localsite", devel = FALSE)
#'
dtc <- function(task_list = c("docs", "localsite"), seed_val = 10,
                devel = TRUE) {

  valid_tasks <- c(
    "test",
    "check",
    "lint",
    "gp",
    "docs",
    "homepage",
    "style",
    "localsite",
    "all"
  )

  # Check task for valid values
  if (length(setdiff(task_list, valid_tasks)) != 0) {
    style <- list("vec-last" = ", ")
    cli::cli_abort(c(
      "{.var task_list} must be one or more of: {cli::cli_vec(valid_tasks)}",
      "x" = "You've supplied '{cli::cli_vec(task_list, style)}'."
    ))
  }

  lapply(task_list, function(task) {

    if (task %in% c("test")) {
      # Run the tests
      devtools::test()
    }

    if (task %in% c("check")) {
      # Run the package check (R CMD CHECK)
      devtools::check()
    }

    if (task %in% c("lint")) {
      # Run the package linter
      pkgload::load_all()
      print(lintr::lint_package())
    }

    if (task %in% c("gp", "all")) {
      # Run the goodpractice code quality checks
      print(goodpractice::goodpractice())
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
      # Locally deploy tweaks to site css
      pkgdown::init_site()
    }

    if (task %in% c("localsite", "all")) {
      # Build the local site for local previewing prior to committing and
      # pushing to GitHub
      pkgdown::clean_site()
      devtools::build_readme()
      pkgdown::build_site(seed = seed_val, devel = devel)
    }

  })

  invisible(NULL)
}

# ============================================================================ #
