# posterdown

<img src="posterdown_hexlogo1.png" alt="poster logo" align="right" width = "25%" height="25%"/>

As a graduate student, I found that it is almost a rite of passage to take early research and analysis and generate a conference poster allowing for critical feedback as well as meeting the people in your field. I have also noticed that many of my fellow graduate students use R and are also getting their feet wet with RMarkdown :blush:; however, we always had to go back to using MS Powerpoint or Keynote for generating conference posters :unamused:. Posterdown was created as a proof of concept (to myself) that it is possible to make a beautiful poster using open source reproducible code.

From this:

<img src="code_pic.png" width="50%" height="50%">

To this:

<img src="example_poster.png" width="50%" height="50%">


Please feel free to give me feedback or requests for changes in the [issues](https://github.com/brentthorne/posterdown/issues) page. I am currently finishing up my masters so I will have limitted time to work on updating this package in the next few months but nevertheless I will do what I can! :smile: 

## Installation

You can install and use **posterdown** from github using the `devtools` package as seen below.

```r

devtools::install_github("brentthorne/posterdown")

```

## Overview

The **posterdown** package provides a familiar workflow for those used to working in [RMarkdown](https://rmarkdown.rstudio.com/). See the `skeleton.Rmd` that is produced posterdown document for how to go from typical RMarkdown formatting to this: **[posterdown PDF Poster](https://github.com/brentthorne/posterdown/raw/master/skeleton.pdf)**

This package is currently focused on a single template called **posterdown_pdf** which is by default a 38in (H) x 45in (W) poster template which allows for custom section headers and content.

## Using posterdown from RStudio

To use **posterdown** from RStudio:

1. Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2. Install the **posterdown** package: 

    ```r    
    devtools::install_github("brentthorne/posterdown")
    ```
    
3. Use the **New R Markdown** dialog to create a conference poster from the templates

    ![New R Markdown](posterdown_picture.png)

## Customization

Posterdown uses Latex to generate the PDF poster but more specifically it uses the [Memoir Latex](http://texdoc.net/texmf-dist/doc/latex/memoir/memman.pdf) class. Memoir was chosen for its flexability in page sizing as well as thorough documentation. I am fairly new to the world of Latex and found this class to have a reasonable amount of customization available. If there are any users who think there may be better options for down the road I am more than willing to listen! 

### YAML OPTIONS

YAML header options have been created to privide more freedom with design (ie colours, number of columns, and sizing) to fit a wide variety of requirments. Here are the default YAML options found in the `skeleton.Rmd` file:

|     Option    | Description |
|---------------|-------------|
| `title` | Poster title, acts as you would expect from RMarkdown. |
| `author` | List of authors which (as of now) only has true support for a single author, however I have provided a hacky way to have many authors until I can find the time to figure out how to impliment something like the [rticles](https://github.com/rstudio/rticles/blob/master/inst/rmarkdown/templates/mdpi_article/skeleton/skeleton.Rmd) packages does|
| `affiliation` | Author affiliations, which just as the `author` section is currently a hacky version of what I would ultimately like to produce. |
| `font_size` | Represents the value for `\normaltextsize` in latex. All other font sizes are adjusted around this, for example, the title in the skeleton document is given the Latex command `\Huge`, meaning that the title text will be "huge" relative to the `font_size` chosen. [Here](https://www.overleaf.com/learn/latex/Font_sizes,_families,_and_styles) is a usefull resource for better understanding the Latex text sizing options.|
| `font_family` | Selects the font family to be used on the poster, in the future I will try to mipiment multiple font families for various components of the poster (such as different fonts for the title versus the main body text).  For now only standard Latex fonts are availble, see [here](https://www.overleaf.com/learn/latex/Font_typefaces) for a list of possible options.|
| `title_bgcol` | The background colour for the title section of the poster (currently using hex values to define this colour) |
| `poster_bgcol`| Background colour of the posters main body section. |
| `title_textcol` | Colour of the main title text. |
| `header_textcol` | Colour of the Section Header Text |
| `cite_col` | Colour of the citation link elements when using `biblatex`. |
| `url_col` | Colour of URL links specifically |
| `link_col` | Colour of in document links (example would be referencing a Figure or a Table) |
| `columnline_col` | Colour of the line which divides each column in the poster |
| `poster_height` | Height of the final poster output. Units can be: "in", "mm", "cm" |
| `poster_width` | Width of the final poster output. Units can be: "in", "mm", "cm" |
| `column_numbers` | Number of columns you wish for the poster to have in the main section of the poster. |
| `bibliography` | Name of the `.bib`. file which you are using to source material. As of right now only `biblatex` is working but I intend to add support of `natbib` which is my preference.
| `output` | For generating `posterdown_pdf`, in the future other poster designs or templates may be made for this package and thus this option in the YAML will be more flexible. For now this is the only option. |

### Markdown Customization

As you add content to your RMarkdown file you will notice the output pdf will fill in columns from left to right as well as top to bottom. If you have more content to fit than what is available on the default poster try altering the number of columns as well as the font size to make it work.

## Using posterdown outside of RStudio

1. Install [pandoc](http://pandoc.org) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2. Install the **rmarkdown** and **posterdown** packages:

    ```r
    devtools::install_github("brentthorne/posterdown")
    ```

3. Use the `rmarkdown::draft()` function to create articles:

    ```r
    rmarkdown::draft("MyPoster.Rmd", template = "posterdown_pdf", package = "posterdown")
    ```
## TODO

- [x] ~~Support for changing the size of the poster~~
- [ ] Support for Natbib
- [ ] Support for logo placement in the title bar section of poster
- [ ] Gradient colour options
- [ ] True YAML multi author/ affiliation support
- [ ] Toggle citation section on/off as per user's choice
- [ ] Make colour options standardized (probably hex colours if possible)
- [ ] Fill/style Section headings if user whishes
