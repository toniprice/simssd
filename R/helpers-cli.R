# ---------------------------------------------------------------------------- #

utils::globalVariables(c("style_valid_types"))

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
#'
#' @keywords internal
#' @noRd
style_valid_types <- function(vec, delim_l = "", delim_r = "",
                              wrap_l = "(", wrap_r = ")") {

  styled <- sprintf("%s%s%s", delim_l, vec, delim_r)
  styled <- paste(styled, sep = "", collapse = ", ")

  paste0(wrap_l, styled, wrap_r)
}

# ---------------------------------------------------------------------------- #
