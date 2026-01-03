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
#> # A tibble: 10 × 9
#>    code     dir_hash indexed_at name  nb_matching_series nb_series provider_code
#>    <chr>    <chr>    <chr>      <chr>              <int>     <int> <chr>        
#>  1 GOV_10A… 9cff859… 2025-03-2… Gene…              12800   1281164 Eurostat     
#>  2 CHELEM-… 6f838e7… 2023-06-0… CHEL…               4937    797349 CEPII        
#>  3 NASA_10… 0359462… 2025-03-2… Fina…               4332    187780 Eurostat     
#>  4 nasa_10… 1f3c7bd… 2025-07-2… Fina…               4332    221486 Eurostat     
#>  5 NASQ_10… 2a250cf… 2025-03-2… Fina…               4309    354694 Eurostat     
#>  6 NASA_10… d81461e… 2025-03-2… Fina…               3672    367216 Eurostat     
#>  7 nasa_10… 91ea88b… 2025-07-2… Fina…               3672    411286 Eurostat     
#>  8 NASA_10… 5799024… 2025-03-2… Fina…               3658    348682 Eurostat     
#>  9 nasa_10… 91d1165… 2025-07-2… Fina…               3658    390558 Eurostat     
#> 10 NASA_10… 709623e… 2025-03-2… Reva…               3650    238303 Eurostat     
#> # ℹ 2 more variables: provider_name <chr>, updated_at <chr>
# }
```
