# ---------------------------------------------------------------------------- #

utils::globalVariables("style_valid_types")

# ---------------------------------------------------------------------------- #
#' Add cli style to a vector of valid type strings
#'
#' Creates a formatted string of valid types from a vector of valid options.
#'
#' @param vec A vector of strings which are a set of valid types (in the sense
#'   of an enumerated type).
#' @param delim_l The left-hand string delimiter for wrapping each element of
#'   the vector. Default: ""
#' @param delim_r The right-hand string delimiter for wrapping each element of
#'   the vector. Default: ""
#' @param wrap_l The left-hand string delimiter for wrapping the styled vector.
#'   Default: "\{"
#' @param wrap_r The right-hand string delimiter for wrapping the styled vector.
#'   Default: "\}"
#'
#' @return The styled vector.
#'
#' @examples
#' style_valid_types(c("one", "two", "three"))
#' style_valid_types(c("one", "two", "three"), wrap_l = "{", wrap_r = "}")
#'
#' style_valid_types(c("one", "two", "three"), delim_l = "[", delim_r = "]",
#'                   wrap_l = "{", wrap_r = "}")
#'
#' @keywords internal
#' @noRd
style_valid_types <- function(vec, delim_l = "", delim_r = "",
                              wrap_l = "(", wrap_r = ")") {

  styled <- sprintf("%s%s%s", delim_l, vec, delim_r)
  styled <- glue::glue_collapse(styled, sep = ", ")

  glue::glue("{wrap_l}{styled}{wrap_r}")
}

# ---------------------------------------------------------------------------- #
#' Format a multiline argument for printing
#'
#' Formats a multiline argument for printing, retaining only a given number of
#' lines to display
#'
#' @param arg The argument to print
#' @param max_lines The maximum number of lines of output to show for the
#'   printed argument. This would include, for example, a line for the column
#'   numbers/names of a matrix (e.g. "\[,1]  \[,2]").
#' @param bullet_theme A character for the `cli::cli_bullets` theme.
#'
#' @return A named character vector which is the result of printing the
#'   argument, up to a maximum of `max_lines`, named by the value of
#'   `bullet_theme`.
#'
#' @seealso [cli::cli_verbatim()]
#' @examples
#' x <- matrix(c(6.62,      4.9,     1.94,
#'               4.9,      -3.524,  10.5,
#'               100.94, -678.5,   -20.95), 3, 3)
#' cli::cli_verbatim(glimpse_arg(x))
#' # Alternatively:
#' cli::cli_inform(cli::cat_line(glimpse_arg(x)))
#'
#' @export
#'
glimpse_arg <- function(arg, max_lines = 3L, bullet_theme = " ") {

  output <- capture.output(print(arg))

  # Only retain up to max_lines lines
  n_lines_info <- ""
  if (length(output) > max_lines) {
    n_more <- length(output) - max_lines # nolint: object_usage_linter
    n_lines_info <- cli::pluralize("and {n_more} more line{?s} ...")
  }

  output <- output[seq_len(min(length(output), max_lines))]

  if (nchar(n_lines_info) > 0L) output <- c(output, n_lines_info)

  # Use bullet_theme to set the cli::cli_bullets theme (default is an indent)
  setNames(output, rep(bullet_theme, length(output)))
}

# ---------------------------------------------------------------------------- #
