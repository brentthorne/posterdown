# posterdown

## Installation

You can install and use **posterdown** from github using the `devtools` package as seen below.

```r

devtools::install_github("brentthorne/posterdown")

```

## Overview

The **posterdown** package provides a familiar workflow enviroment for those used to working in [RMarkdown](https://rmarkdown.rstudio.com/). See the `skeleton.Rmd` that is produced when generating a new posterdown document for how to go from typical RMarkdown formatting to this: **[posterdown PDF Poster](https://github.com/brentthorne/posterdown/raw/master/exampleposter.pdf)**

~~This package is currently focused on a single template called **posterdown_memoir** which is a 38in (H) by 45in (W) poster template which allows for custom section headers and content.~~

This package is currently focused on a single template called **posterdown_pdf** which is a modular 38in (H) by 45in (W) poster template which allows for custom section headers and content.

## Using posterdown from RStudio

To use **posterdown** from RStudio:

1. Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2. Install the **posterdown** package: 

    ```r    
    devtools::install_github("brentthorne/posterdown")
    ```
    
3. Use the **New R Markdown** dialog to create a conference poster from the templates

    ![New R Markdown](https://raw.githubusercontent.com/brentthorne/posterdown/master/posterdownpicture.png?token=AOmnYy0gIGiYeN5XNIRhf_h9JKN8BhwMks5cEdqAwA%3D%3D)

## Using posterdown outside of RStudio

1. Install [pandoc](http://pandoc.org) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2. Install the **rmarkdown** and **posterdown** packages:

    ```r
    devtools::install_github("brentthorne/posterdown")
    ```

3. Use the `rmarkdown::draft()` function to create articles:

    ```r
    rmarkdown::draft("MyJSSArticle.Rmd", template = "posterdown_pdf", package = "posterdown")
    ```
