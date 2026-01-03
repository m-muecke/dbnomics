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
#> # A tibble: 94 × 7
#>    code  indexed_at               name         region slug  terms_of_use website
#>    <chr> <chr>                    <chr>        <chr>  <chr> <chr>        <chr>  
#>  1 ACOSS 2024-02-21T04:02:56.149Z Agence cent… FRANCE acoss https://www… https:…
#>  2 AFDB  2023-02-22T15:37:20.879Z African Dev… Africa afdb  https://www… https:…
#>  3 AIH   2023-03-17T07:59:19.500Z Africa Info… AFRICA aih   https://www… https:…
#>  4 AMECO 2026-01-03T01:15:11.989Z Annual macr… EU     ameco https://ec.… https:…
#>  5 Apple 2023-02-21T17:46:38.181Z Apple        World  apple https://cov… https:…
#>  6 AQICN 2023-02-21T09:39:08.392Z The World A… World  aqicn https://aqi… https:…
#>  7 BCB   2025-06-29T01:13:23.049Z Banco Centr… BR     bcb   NA           http:/…
#>  8 BCEAO 2025-03-22T01:15:57.008Z Banque Cent… West … bceao http://www.… http:/…
#>  9 BDF   2026-01-03T06:03:45.234Z Banque de F… FR     bdf   https://web… https:…
#> 10 BEA   2026-01-03T01:35:25.873Z U.S. Bureau… US     bea   https://bea… http:/…
#> # ℹ 84 more rows
db_providers("BEA")
#> # A tibble: 1 × 7
#>   code  indexed_at               name          region slug  terms_of_use website
#>   <chr> <chr>                    <chr>         <chr>  <chr> <chr>        <chr>  
#> 1 BEA   2026-01-03T01:35:25.873Z U.S. Bureau … US     bea   https://bea… http:/…
# }
```
