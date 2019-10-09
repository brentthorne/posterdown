#' Posterdown HTML format (using pagedown::poster_relaxed)
#'
#' @inheritParams pagedown::poster_relaxed
#' @param ... Additional arguments to `rmarkdown::html_document`
#'
#' @return R Markdown output format to pass to
#'   [rmarkdown::render()]
#'
#'@examples
#'\donttest{
#'file <- file.path(tempdir(),"foo.rmd")
#'rmarkdown::draft(file, template="posterdown_html", package="posterdown")
#'}
#'
#' @export
posterdown_html <- function(...,
	template = find_resource("posterdown_html", "template.html"),
	css = NULL) {
	pagedown::poster_relaxed(..., css = css, template = template)
}

#' @description The output format `poster_betterland()` mimics the style of the
#' BetterPoster movement from twitter.
#' @rdname posterdown_html
#' @export
posterdown_betterland <- function(...,
                            template = find_resource("posterdown_betterland", "template.html"),
                            css = NULL) {
  pagedown::poster_relaxed(..., css = css, template = template)
}

#' @description The output format `poster_betterport()` mimics the style of the
#' BetterPoster movement from twitter.
#' @rdname posterdown_html
#' @export
posterdown_betterport <- function(...,
                                  template = find_resource("posterdown_betterport", "template.html"),
                                  css = NULL) {
  pagedown::poster_relaxed(..., css = css, template = template)
}
