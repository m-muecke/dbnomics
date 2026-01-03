is_flag <- function(x, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  is.logical(x) && length(x) == 1L && !is.na(x)
}

is_string <- function(x, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  is.character(x) && length(x) == 1L && !is.na(x)
}

is_character <- function(x, null_ok = FALSE) {
  if (null_ok && is.null(x)) {
    return(TRUE)
  }
  is.character(x) && !anyNA(x) && length(x) > 0L
}
