#' Creates an R Markdown PDF Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify using the Brock University LaTeX template and cls files.
#'
#' @export
#'
#' @param toc A Boolean (TRUE or FALSE) specifying where table of contents should be created
#' @param toc_depth A positive integer
#' @param ... arguments to be passed to \code{rmarkdown::\link[rmarkdown]{pdf_document}}
#'
#' @return A modified \code{pdf_document} based on the Jacobs Landscape Poster Latex template
#' @note The arguments highlight, keep_tex, and pandoc_args, are already set.
#' @examples
#' \dontrun{
#'  output: posterdown::poster_pdf
#' }
poster_pdf <- function(toc = TRUE, toc_depth = 3, ...){

  base <- rmarkdown::pdf_document(template = "template.tex",
                             toc = toc,
                             toc_depth = toc_depth,
                             highlight = "default",
                             keep_tex = TRUE,
                             pandoc_args = "--top-level-division=default",
                             ...)

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$out.width <- "80%"
  base$knitr$opts_knit$root.dir   <- getwd()
  # Not sure if needed?
  base$knitr$knit_hooks$plot <- knitr:::hook_plot_tex

  base

}
