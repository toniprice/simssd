# ---------------------------------------------------------------------------- #

# Note: To run the linter manually, use:
#   > pkgload::load_all(); lintr::lint_package()

if (run_lints <- FALSE) {
  # see https://masalmon.eu/2017/06/17/automatictools/
  if (requireNamespace("lintr", quietly = TRUE)) {
    test_that("package code conforms to style", {
      skip_on_cran()
      # Note that the result of print(getwd()) from within this function gives
      # the path to tests/testthat, hence the path specification here
      lintr::expect_lint_free(path = "../..", relative_path = FALSE)
    })
  }
}

# ---------------------------------------------------------------------------- #
