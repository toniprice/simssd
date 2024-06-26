# ---------------------------------------------------------------------------- #
test_that("checkmate_chk works as expected", {

  chk_for_null <- checkmate_chk(checkmate::check_null)

  expect_true(chk_for_null(NULL, quiet = FALSE))
})

# ---------------------------------------------------------------------------- #
test_that("chk_choice works as expected for successful check", {

  valid_choices <- c("pineapple", "blueberry", "peach")

  expect_true(chk_choice("peach", valid_choices, quiet = FALSE))
})

# ---------------------------------------------------------------------------- #
test_that("chk_choice works as expected for failed check", {

  valid_choices <- c("pineapple", "blueberry", "peach")

  expect_false(chk_choice("avocado", valid_choices))

  expect_snapshot(chk_choice("avocado", valid_choices, quiet = FALSE))
})

# ---------------------------------------------------------------------------- #
test_that("chk_choice sets error message in attribue of return val", {

  valid_choices <- c("pineapple", "blueberry", "peach")

  res <- chk_choice("tractor", valid_choices)
  expect_match(attr(res, "err_msg"),
               "Must be element of set .* but is 'tractor'")
})

# ---------------------------------------------------------------------------- #
test_that("chk_choice emits correct error message with cli::cli_abort", {

  valid_choices <- c("pineapple", "blueberry", "peach")

  expect_error({
    res <- chk_choice("mountain", valid_choices)
    if (!res) {
      cli::cli_abort("{cli::cli_verbatim(attr(res, 'err_msg'))}")
    }
  }, "Must be element of set .* but is 'mountain'")
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

# ---------------------------------------------------------------------------- #
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

# ---------------------------------------------------------------------------- #
