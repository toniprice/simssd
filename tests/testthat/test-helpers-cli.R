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
test_that("glimpse_arg works as expected for vector", {
  x <- c(6.62, 4.900, 1.94, 4.90, -3.524, -678.50)

  formatted <- "[1]    6.620    4.900    1.940    4.900   -3.524 -678.500"

  names(formatted) <- rep(" ", length(formatted))

  expect_identical(glimpse_arg(x), formatted)
})

# ---------------------------------------------------------------------------- #
test_that("glimpse_arg works as expected for matrix with 1 extra line", {
  # nolint start
  x <- matrix(c(  6.62,  4.9,      1.94,
                  4.9,  -3.524, -678.5,
                100.94, 10.5,    -20.95), 3, 3, byrow = TRUE)
  # nolint end

  formatted <- c(
    "       [,1]   [,2]    [,3]",
    "[1,]   6.62  4.900    1.94",
    "[2,]   4.90 -3.524 -678.50",
    "and 1 more line ..."
  )

  names(formatted) <- rep(" ", length(formatted))

  expect_identical(glimpse_arg(x, 3), formatted)
})

# ---------------------------------------------------------------------------- #
test_that("glimpse_arg works as expected for matrix with 2 extra lines", {
  # nolint start
  x <- matrix(c(  6.62,    4.9,      1.94,
                  4.9,    -3.524, -678.5,
                100.94,   10.5,    -20.95,
                 31.2,  1000.0,    -90.35,
                 -8.045,  12.45,     4.6), 5, 3, byrow = TRUE)
  # nolint end

  formatted <- c(
    "        [,1]     [,2]    [,3]",
    "[1,]   6.620    4.900    1.94",
    "[2,]   4.900   -3.524 -678.50",
    "[3,] 100.940   10.500  -20.95",
    "and 2 more lines ..."
  )
  names(formatted) <- rep(" ", length(formatted))

  expect_identical(glimpse_arg(x, 4), formatted)
})

# ---------------------------------------------------------------------------- #
test_that("glimpse_arg works as expected for matrix with named cols", {
  # nolint start
  x <- matrix(c(  6.62,  4.9,      1.94,
                  4.9,  -3.524, -678.5,
                100.94, 10.5,    -20.95), 3, 3, byrow = TRUE)
  # nolint end

  colnames(x) <- c("First Col", "Second Col", "Third Col")

  formatted <- c(
    "     First Col Second Col Third Col",
    "[1,]      6.62      4.900      1.94",
    "[2,]      4.90     -3.524   -678.50",
    "and 1 more line ..."
  )

  names(formatted) <- rep(" ", length(formatted))

  expect_identical(glimpse_arg(x, 3), formatted)
})

test_that("glimpse_arg works as expected for matrix with named rows", {
  # nolint start
  x <- matrix(c(  6.62,  4.9,      1.94,
                  4.9,  -3.524, -678.5,
                100.94, 10.5,    -20.95), 3, 3, byrow = TRUE)
  # nolint end

  rownames(x) <- c("firstRow", "secondRow", "thirdRow")

  formatted <- c(
    "            [,1]   [,2]    [,3]",
    "firstRow    6.62  4.900    1.94",
    "secondRow   4.90 -3.524 -678.50",
    "and 1 more line ..."
  )

  names(formatted) <- rep(" ", length(formatted))

  expect_identical(glimpse_arg(x, 3), formatted)
})
