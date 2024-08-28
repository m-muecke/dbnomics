`%||%` <- function(x, y) {
  if (is.null(x)) y else x
}

as_tibble <- function(x) {
  if (getOption("dbnomics.use_tibble", TRUE) && requireNamespace("tibble", quietly = TRUE)) { # nolint
    tibble::as_tibble(x)
  } else {
    x
  }
}

map <- function(.x, .f, ...) {
  if (is.function(.f)) {
    lapply(.x, .f, ...)
  } else {
    lapply(.x, `[[`, .f, ...)
  }
}

map_mold <- function(.x, .f, .value, ...) {
  out <- if (is.function(.f)) {
    vapply(.x, .f, FUN.VALUE = .value, USE.NAMES = FALSE, ...)
  } else {
    vapply(.x, \(x) x[[.f]] %||% .value, FUN.VALUE = .value, USE.NAMES = FALSE, ...)
  }
  stats::setNames(out, names(.x))
}

map_chr <- function(.x, .f, ...) {
  map_mold(.x, .f, NA_character_, ...)
}

map_int <- function(.x, .f, ...) {
  map_mold(.x, .f, NA_integer_, ...)
}
