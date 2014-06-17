\name{ExternalFigure}
\alias{ExternalFigure}
\title{Place external image}
\description{Place a Figure from a file.}
\usage{ExternalFigure(key, caption, width, height)}
\arguments{
  \item{key}{identifier for the figure being referenced}
  \item{caption}{logical: place figure caption?}
  \item{width}{the figure width in inches. Defaults to knitr global chunk setting}
  \item{height}{the figure height in inches. Defaults to knitr global chunk setting}
}

\value{No direct return value. Prints HTML to the console
to be read 'asis' by a knitr code chunk.}

\author{Michael Koohafkan}





