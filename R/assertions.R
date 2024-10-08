is_string <- function(x) {
  is.character(x) && length(x) == 1L && !is.na(x)
}

is_string_or_null <- function(x) {
  is.null(x) || is_string(x)
}

is_character <- function(x) {
  is.character(x) && !anyNA(x) && length(x) > 0L
}

is_character_or_null <- function(x) {
  is.null(x) || is_character(x)
}

is_bool <- function(x) {
  is.logical(x) && length(x) == 1L
}
