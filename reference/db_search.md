# List datasets from full-text search

List datasets from full-text search

## Usage

``` r
db_search(query)
```

## Arguments

- query:

  `character(1)` full-text search.

## Examples

``` r
# \donttest{
db_search("GDP France")
#> Error in vapply(.x, `[[`, .f, FUN.VALUE = .value, USE.NAMES = FALSE, ...): values must be length 1,
#>  but FUN(X[[2]]) result is length 0
# }
```
