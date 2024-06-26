# ---------------------------------------------------------------------------- #
test_that("style_valid_types works as expected", {
  valid <- c("one", "two", "three")
  expect_identical(style_valid_types(valid), "(one, two, three)")
})

# ---------------------------------------------------------------------------- #
test_that("style_valid_types works with non-default delims", {
  valid <- c("one", "two", "three")
  styled <- style_valid_types(valid, delim_l = "[", delim_r = "]")
  expect_identical(styled, "([one], [two], [three])")
})

# ---------------------------------------------------------------------------- #
test_that("style_valid_types works with non-default wrappers", {
  valid <- c("one", "two", "three")
  styled <- style_valid_types(valid, wrap_l = "{", wrap_r = "}")
  expect_identical(styled, "{one, two, three}")
})

# ---------------------------------------------------------------------------- #
test_that("style_valid_types works with non-default delims & wrappers", {
  valid <- c("one", "two", "three")
  styled <- style_valid_types(valid, delim_l = "[", delim_r = "]",
                              wrap_l = "{", wrap_r = "}")
  expect_identical(styled, "{[one], [two], [three]}")
})

# ---------------------------------------------------------------------------- #
