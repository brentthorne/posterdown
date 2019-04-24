#' Posterdown LaTeX format (using Memoir LaTeX document class)
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to `rmarkdown::pdf_document`
#'
#' @return R Markdown output format to pass to
#'   [rmarkdown::render()]
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "posterdown_pdf", package = "posterdown")
#' }
#' @export
# This is borrowed from the thesisdown package github.com/ismayc/thesisdown
posterdown_latex <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                       keep_tex = keep_tex,
                       template = find_resource("posterdown_latex", "template.tex"),
                       citation_package = "biblatex")
}

#' @description Legacy function for the OG's of posterdown.
#' This will remain untouched from here on out (Feb 6 2019).
#' @rdname posterdown_latex
#' @export
posterdown_pdf <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                       keep_tex = keep_tex,
                       template = find_resource("posterdown_pdf", "template.tex"),
                       citation_package = "biblatex")
}
