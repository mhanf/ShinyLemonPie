#' stop if x is not logical
#'
#' @param x variable to test
#'
#' @return an error message

test_logical <- function(x) {
  if (is.logical(x) == FALSE) {
    stop(sprintf("%s must be logical", deparse(substitute(x))))
  }
}


#' stop if x is not character
#'
#' @param x variable to test
#'
#' @return an error message
#' @export
#'
#' @examples
test_character <- function(x) {
  if (is.character(x) == FALSE) {
    stop(sprintf("%s must be character", deparse(substitute(x))))
  }
}
