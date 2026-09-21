# To deal with 'no visible binding for global variable' on R CMD CHECK
#
# Note that `utils::globalVariables(c(...))` stores a _metadata_ object in the
# package's namespace and is used for the purpose of checking the package.
#
# From `?globalVariables`: "The global variables list really belongs to a
#                           restricted scope".
#
# When Data Masking is in use, as is the case with some `dplyr` functions,
# variables used inside `dplyr` verbs such as `mutate` & `filter` should use the
# `.data` pronoun from the `rlang` package to avoid 'no visible binding' NOTEs.
#
# See
# https://dplyr.tidyverse.org/articles/programming.html#data-masking

utils::globalVariables(
  "style_valid_types"
)
