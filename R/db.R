#' List series
#'
#' @export
#' @examples
#' \donttest{
#' db_series("AMECO/ZUTN/EA19.1.0.0.0.ZUTN")
#' }
db_series <- function(series_ids,
                      facets = FALSE,
                      observations = FALSE,
                      metadata = TRUE,
                      format = "json",
                      align_periods = FALSE) {
  stopifnot(
    is_character(series_ids),
    is_bool(facets),
    is_bool(observations),
    is_bool(metadata),
    is_string(format),
    is_bool(align_periods)
  )
  dbnomics(
    "series",
    series_ids = series_ids,
    facets = facets,
    observations = observations,
    metadata = metadata,
    format = format,
    align_periods = align_periods
  )
}

#' List datasets from full-text search
#'
#' @param query `character(1)` full-text search.
#' @export
#' @examples
#' \donttest{
#' db_search("GDP France")
#' }
db_search <- function(query) {
  stopifnot(is_string(query))
  res <- dbnomics("search", q = query)
  res <- res$result$docs
  res <- data.frame(
    code = map_chr(res, "code"),
    dir_hash = map_chr(res, "dir_hash"),
    indexed_at = map_chr(res, "indexed_at"),
    name = map_chr(res, "name"),
    nb_matching_series = map_int(res, "nb_matching_series"),
    nb_series = map_int(res, "nb_series"),
    provider_code = map_chr(res, "provider_code"),
    provider_name = map_chr(res, "provider_name"),
    updated_at = map_chr(res, "updated_at"),
    check.names = FALSE
  )
  as_tibble(res)
}

#' List providers and datasets sorted by creation date
#'
#' @export
#' @examples
#' \donttest{
#' db_last_updates()
#' }
db_last_updates <- function() {
  res <- dbnomics("last-updates")
  datasets <- res$datasets$docs
  providers <- res$providers$docs
  datasets <- data.frame(
    code = map_chr(datasets, "code"),
    description = map_chr(datasets, "description"),
    dir_hash = map_chr(datasets, "dir_hash"),
    indexed_at = map_chr(datasets, "indexed_at"),
    name = map_chr(datasets, "name"),
    nb_series = map_int(datasets, "nb_series"),
    provider_code = map_chr(datasets, "provider_code"),
    provider_name = map_chr(datasets, "provider_name"),
    updated_at = map_chr(datasets, "updated_at"),
    check.names = FALSE
  )
  providers <- data.frame(
    code = map_chr(providers, "code"),
    indexed_at = map_chr(providers, "indexed_at"),
    name = map_chr(providers, "name"),
    region = map_chr(providers, "region"),
    slug = map_chr(providers, "slug"),
    website = map_chr(providers, "website"),
    check.names = FALSE
  )
  list(
    datasets = as_tibble(datasets),
    providers = as_tibble(providers)
  )
}

#' List available providers
#'
#' @param provider_code `character(1)` code of the provider
#' @returns A `data.frame()` with the available providers.
#' @export
#' @examples
#' \donttest{
#' db_providers()
#' db_providers("BEA")
#' }
db_providers <- function(provider_code = NULL) {
  stopifnot(is_string_or_null(provider_code))
  resource <- "providers"
  has_code <- !is.null(provider_code)
  if (has_code) {
    resource <- paste(resource, provider_code, sep = "/")
  }
  res <- dbnomics(resource)
  if (has_code) {
    providers <- as.data.frame(res$provider)
  } else {
    providers <- res$providers$docs
    providers <- data.frame(
      code = map_chr(providers, "code"),
      indexed_at = map_chr(providers, "indexed_at"),
      name = map_chr(providers, "name"),
      region = map_chr(providers, "region"),
      slug = map_chr(providers, "slug"),
      terms_of_use = map_chr(providers, "terms_of_use"),
      website = map_chr(providers, "website"),
      check.names = FALSE
    )
  }
  as_tibble(providers)
}

dbnomics <- function(resource, ..., limit = 100L, offset = 0L) {
  request("https://api.db.nomics.world/v22") |>
    req_user_agent("dbnomics (https://m-muecke.github.io/dbnomics)") |>
    req_url_path_append(resource) |>
    req_url_query(...) |>
    req_perform() |>
    resp_body_json()
}
