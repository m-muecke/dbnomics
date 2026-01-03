# List providers and datasets sorted by creation date

List providers and datasets sorted by creation date

## Usage

``` r
db_last_updates()
```

## Examples

``` r
# \donttest{
db_last_updates()
#> $datasets
#> # A tibble: 100 × 9
#>    code       description dir_hash      indexed_at name  nb_series provider_code
#>    <chr>      <chr>       <chr>         <chr>      <chr>     <int> <chr>        
#>  1 IROLOBE2   NA          cf85b54a6e93… 2026-01-0… Yiel…       188 NBB          
#>  2 EXR        NA          33c576af5a53… 2026-01-0… Refe…       198 NBB          
#>  3 BSIMFI     NA          9e654ed33984… 2026-01-0… Main…        80 NBB          
#>  4 BSICREDINS NA          3cf406dfe426… 2026-01-0… Main…        78 NBB          
#>  5 IRESCB     NA          40d3df412a41… 2026-01-0… Mone…        24 NBB          
#>  6 IROLOYLD   NA          19dad0ff1326… 2026-01-0… Long…         9 NBB          
#>  7 IRTRCERT   NA          b941bcbef69d… 2026-01-0… Refe…        52 NBB          
#>  8 MONAGG     NA          9bfeddc9e359… 2026-01-0… Mone…        66 NBB          
#>  9 STOCCOM    NA          92b69852eefa… 2026-01-0… Stoc…        12 NBB          
#> 10 DEA09      NA          bdd567651394… 2026-01-0… Dist…      1539 CSO          
#> # ℹ 90 more rows
#> # ℹ 2 more variables: provider_name <chr>, updated_at <chr>
#> 
#> $providers
#> # A tibble: 94 × 6
#>    code   indexed_at               name                     region slug  website
#>    <chr>  <chr>                    <chr>                    <chr>  <chr> <chr>  
#>  1 NBB    2026-01-03T08:36:55.806Z National Bank of Belgium BE     nbb   https:…
#>  2 CSO    2026-01-03T07:38:41.559Z Central Statistics Offi… IE     cso   https:…
#>  3 BDF    2026-01-03T06:03:45.234Z Banque de France         FR     bdf   https:…
#>  4 BOC    2026-01-03T05:08:29.124Z Bank of Canada           Canada boc   https:…
#>  5 CWD    2026-01-03T05:00:53.931Z Climate Watch Data       NA     cwd   https:…
#>  6 JILPT  2026-01-03T04:56:07.400Z Japan Institute for Lab… JP     jilpt https:…
#>  7 ICE    2026-01-03T04:46:27.880Z Intercontinental Exchan… NA     ice   https:…
#>  8 WHO    2026-01-03T04:37:18.299Z World Health Organizati… WORLD  who   https:…
#>  9 UNDATA 2026-01-03T04:32:26.961Z United Nations           World  unda… https:…
#> 10 JRC    2026-01-03T04:27:09.594Z Joint Research Center    Europe jrc   https:…
#> # ℹ 84 more rows
#> 
# }
```
