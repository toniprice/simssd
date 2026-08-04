# Format a multiline argument for printing

Formats a multiline argument for printing, retaining only a given number
of lines to display

## Usage

``` r
glimpse_arg(arg, max_lines = 3L, bullet_theme = " ")
```

## Arguments

- arg:

  The argument to print

- max_lines:

  The maximum number of lines of output to show for the printed
  argument. This would include, for example, a line for the column
  numbers/names of a matrix (e.g. "\[,1\] \[,2\]").

- bullet_theme:

  A character for the
  [`cli::cli_bullets`](https://cli.r-lib.org/reference/cli_bullets.html)
  theme.

## Value

A named character vector which is the result of printing the argument,
up to a maximum of `max_lines`, named by the value of `bullet_theme`.

## See also

[`cli::cli_verbatim()`](https://cli.r-lib.org/reference/cli_verbatim.html)

## Examples

``` r
x <- matrix(c(6.62,      4.9,     1.94,
              4.9,      -3.524,  10.5,
              100.94, -678.5,   -20.95), 3, 3)
cli::cli_verbatim(glimpse_arg(x))
#>      [,1]   [,2]    [,3]
#> [1,] 6.62  4.900  100.94
#> [2,] 4.90 -3.524 -678.50
#> and 1 more line ...
# Alternatively:
cli::cli_inform(cli::cat_line(glimpse_arg(x)))
#>      [,1]   [,2]    [,3]
#> [1,] 6.62  4.900  100.94
#> [2,] 4.90 -3.524 -678.50
#> and 1 more line ...
#> 
```
