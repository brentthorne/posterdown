#' Posterdown HTML format (using bookdown::html_document2)
#'
#' @inheritParams pagedown::poster_relaxed
#' @param ... Additional arguments to \code{rmarkdown::html_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "posterdown_html", package = "posterdown")
#' }
#' @export
posterdown_html <- function(...,
	template = find_resource("posterdown_html", "template.html"),
	css = NULL) {
	pagedown::poster_relaxed(..., css = css, template = template)
}
