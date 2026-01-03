# List series

List series

## Usage

``` r
db_series(
  series_ids,
  facets = FALSE,
  observations = FALSE,
  metadata = TRUE,
  format = "json",
  align_periods = FALSE
)
```

## Examples

``` r
# \donttest{
db_series("AMECO/ZUTN/EA19.1.0.0.0.ZUTN")
#> $`_meta`
#> $`_meta`$args
#> $`_meta`$args$align_periods
#> [1] FALSE
#> 
#> $`_meta`$args$facets
#> [1] FALSE
#> 
#> $`_meta`$args$format
#> [1] "json"
#> 
#> $`_meta`$args$limit
#> [1] 1000
#> 
#> $`_meta`$args$metadata
#> [1] TRUE
#> 
#> $`_meta`$args$observations
#> [1] FALSE
#> 
#> $`_meta`$args$offset
#> [1] 0
#> 
#> $`_meta`$args$series_ids
#> $`_meta`$args$series_ids[[1]]
#> $`_meta`$args$series_ids[[1]][[1]]
#> [1] "AMECO"
#> 
#> $`_meta`$args$series_ids[[1]][[2]]
#> [1] "ZUTN"
#> 
#> $`_meta`$args$series_ids[[1]][[3]]
#> [1] "EA19.1.0.0.0.ZUTN"
#> 
#> 
#> 
#> 
#> $`_meta`$version
#> [1] "22.1.17"
#> 
#> 
#> $datasets
#> $datasets$`AMECO/ZUTN`
#> $datasets$`AMECO/ZUTN`$code
#> [1] "ZUTN"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_codes_order
#> $datasets$`AMECO/ZUTN`$dimensions_codes_order[[1]]
#> [1] "freq"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_codes_order[[2]]
#> [1] "unit"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_codes_order[[3]]
#> [1] "geo"
#> 
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_labels
#> $datasets$`AMECO/ZUTN`$dimensions_labels$freq
#> [1] "Frequency"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_labels$geo
#> [1] "Country"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_labels$unit
#> [1] "Unit"
#> 
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$freq
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$freq$a
#> [1] "Annually"
#> 
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$alb
#> [1] "Albania"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$aus
#> [1] "Australia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$aut
#> [1] "Austria"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$bel
#> [1] "Belgium"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$bgr
#> [1] "Bulgaria"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$can
#> [1] "Canada"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$che
#> [1] "Switzerland"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$cyp
#> [1] "Cyprus"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$cze
#> [1] "Czech Republic"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$`d-w`
#> [1] "West Germany"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$da12
#> [1] "EA12 (including D_W West-Germany)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$deu
#> [1] "Germany"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$dnk
#> [1] "Denmark"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$du15
#> [1] "EU15 (including D_W West-Germany)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$ea12
#> [1] "Euro area (12 countries)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$ea19
#> [1] "Euro area (19 countries)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$ea20
#> [1] "Euro area (20 countries)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$esp
#> [1] "Spain"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$est
#> [1] "Estonia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$eu15
#> [1] "European Union (15 countries)"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$eu27
#> [1] "European Union"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$fin
#> [1] "Finland"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$fra
#> [1] "France"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$gbr
#> [1] "United Kingdom"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$grc
#> [1] "Greece"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$hrv
#> [1] "Croatia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$hun
#> [1] "Hungary"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$irl
#> [1] "Ireland"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$isl
#> [1] "Iceland"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$ita
#> [1] "Italy"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$jpn
#> [1] "Japan"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$kor
#> [1] "Korea"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$ltu
#> [1] "Lithuania"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$lux
#> [1] "Luxembourg"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$lva
#> [1] "Latvia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$mkd
#> [1] "North Macedonia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$mlt
#> [1] "Malta"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$mne
#> [1] "Montenegro"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$nld
#> [1] "Netherlands"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$nor
#> [1] "Norway"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$nzl
#> [1] "New Zealand"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$pol
#> [1] "Poland"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$prt
#> [1] "Portugal"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$rom
#> [1] "Romania"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$srb
#> [1] "Serbia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$svk
#> [1] "Slovakia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$svn
#> [1] "Slovenia"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$swe
#> [1] "Sweden"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$tur
#> [1] "Türkiye"
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$geo$usa
#> [1] "United States"
#> 
#> 
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$unit
#> $datasets$`AMECO/ZUTN`$dimensions_values_labels$unit$`percentage-of-active-population`
#> [1] "(Percentage of active population)"
#> 
#> 
#> 
#> $datasets$`AMECO/ZUTN`$dir_hash
#> [1] "d47dc76beba98b16273ebf2c9019d7ec2ad68f0a"
#> 
#> $datasets$`AMECO/ZUTN`$indexed_at
#> [1] "2025-11-18T01:13:10.361Z"
#> 
#> $datasets$`AMECO/ZUTN`$name
#> [1] "Unemployment rate: total :- Member States: definition EUROSTAT"
#> 
#> $datasets$`AMECO/ZUTN`$nb_series
#> [1] 50
#> 
#> $datasets$`AMECO/ZUTN`$provider_code
#> [1] "AMECO"
#> 
#> $datasets$`AMECO/ZUTN`$provider_name
#> [1] "Annual macro-economic database of the European Commission's Directorate General for Economic and Financial Affairs"
#> 
#> 
#> 
#> $errors
#> NULL
#> 
#> $providers
#> $providers$AMECO
#> $providers$AMECO$attribution
#> NULL
#> 
#> $providers$AMECO$code
#> [1] "AMECO"
#> 
#> $providers$AMECO$description
#> NULL
#> 
#> $providers$AMECO$indexed_at
#> [1] "2026-01-03T01:15:11.989Z"
#> 
#> $providers$AMECO$name
#> [1] "Annual macro-economic database of the European Commission's Directorate General for Economic and Financial Affairs"
#> 
#> $providers$AMECO$region
#> [1] "EU"
#> 
#> $providers$AMECO$slug
#> [1] "ameco"
#> 
#> $providers$AMECO$terms_of_use
#> [1] "https://ec.europa.eu/info/legal-notice_en#copyright-notice"
#> 
#> $providers$AMECO$website
#> [1] "https://ec.europa.eu/info/business-economy-euro/indicators-statistics/economic-databases/macro-economic-database-ameco_en"
#> 
#> 
#> 
#> $series
#> $series$docs
#> $series$docs[[1]]
#> $series$docs[[1]]$dataset_code
#> [1] "ZUTN"
#> 
#> $series$docs[[1]]$dataset_name
#> [1] "Unemployment rate: total :- Member States: definition EUROSTAT"
#> 
#> $series$docs[[1]]$dimensions
#> $series$docs[[1]]$dimensions$freq
#> [1] "a"
#> 
#> $series$docs[[1]]$dimensions$geo
#> [1] "ea19"
#> 
#> $series$docs[[1]]$dimensions$unit
#> [1] "percentage-of-active-population"
#> 
#> 
#> $series$docs[[1]]$indexed_at
#> [1] "2025-11-18T01:13:10.361Z"
#> 
#> $series$docs[[1]]$provider_code
#> [1] "AMECO"
#> 
#> $series$docs[[1]]$series_code
#> [1] "EA19.1.0.0.0.ZUTN"
#> 
#> $series$docs[[1]]$series_name
#> [1] "Annually – (Percentage of active population) – Euro area (19 countries)"
#> 
#> 
#> 
#> $series$limit
#> [1] 1000
#> 
#> $series$num_found
#> [1] 1
#> 
#> $series$offset
#> [1] 0
#> 
#> 
# }
```
