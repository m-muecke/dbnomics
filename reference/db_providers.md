# List available providers

List available providers

## Usage

``` r
db_providers(provider_code = NULL)
```

## Arguments

- provider_code:

  `character(1)` code of the provider

## Value

A [`data.frame()`](https://rdrr.io/r/base/data.frame.html) with the
available providers.

## Examples

``` r
# \donttest{
db_providers()
#> Error in vapply(.x, `[[`, .f, FUN.VALUE = .value, USE.NAMES = FALSE, ...): values must be length 1,
#>  but FUN(X[[20]]) result is length 0
db_providers("BEA")
#>   code               indexed_at                             name region slug
#> 1  BEA 2026-01-03T01:35:25.873Z U.S. Bureau of Economic Analysis     US  bea
#>                               terms_of_use            website
#> 1 https://bea.gov/API/_pdf/bea_api_tos.pdf http://www.bea.gov
# }
```
