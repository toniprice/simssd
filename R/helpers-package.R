# See
# https://r-pkgs.org/dependencies-in-practice.html#
#   how-to-not-use-a-package-in-imports
# [viewed 30nov23]

ignore_unused_imports <- function() {
  checkmate::check_choice
  NULL
}
