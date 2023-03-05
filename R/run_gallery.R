#' Shiny app: ShinylemonPie capabilities
#' @description Shiny app demonstrating the ShinylemonPie capabilities.
#'
#' @return No returned value, this function just runs a Shiny app.
#'
#' @importFrom shiny shinyAppDir
#' @export

run_gallery <- function() {
  appDir <- system.file("app", package = "ShinyLemonPie")
  shinyAppDir(appDir)
}
