#' Posterdown PDF format (using 'memoir' document class)
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "posterdown_generic", package = "posterdown")
#' }
#'
#' @export
posterdown_pdf <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                       keep_tex = keep_tex,
                       template = find_resource("posterdown_pdf", "template.tex"),
                       citation_package = "biblatex")
}
