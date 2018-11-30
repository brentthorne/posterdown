#' Return latex control text if rendering latex
#'
#' @param txt
#'
#' @return a string
#' @export
#'
#' @examples
#' \dontrun{
#' iflatex("\\vspace*{\\fill}")
#' }
#'
iflatex <- function(txt){
  if (knitr::opts_knit$get("rmarkdown.pandoc.to") == "latex"){
    return(txt)
  } else {
    return("")
  }
}