# ---------------------------------------------------------------------------- #

# This test uses the .lintr configuration file in the project root.

# Note: To run the linter manually, use:
#   > pkgload::load_all(); lintr::lint_package()

run_lints <- FALSE
# See https://masalmon.eu/2017/06/17/automatictools/
if (run_lints && requireNamespace("lintr", quietly = TRUE)) {
  test_that("package code conforms to style", {
    skip_on_cran()
    lintr::expect_lint_free(here::here(""))
  })
}

# ---------------------------------------------------------------------------- #
