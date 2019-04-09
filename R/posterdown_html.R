#' Posterdown HTML format (using bookdown::html_document2)
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
#' @description The output format \code{poster_betterland()} mimics the style of the
#' \dQuote{BetterPoster} movement from twitter.
#' @rdname posterdown_html
#' @export
posterdown_betterland <- function(...,
                            template = find_resource("posterdown_betterland", "template.html"),
                            css = NULL) {
  pagedown::poster_relaxed(..., css = css, template = template)
}
#' @description The output format \code{poster_betterport()} mimics the style of the
#' \dQuote{BetterPoster} movement from twitter.
#' @rdname posterdown_html
#' @export
posterdown_betterport <- function(...,
                                  template = find_resource("posterdown_betterport", "template.html"),
                                  css = NULL) {
  pagedown::poster_relaxed(..., css = css, template = template)
}
