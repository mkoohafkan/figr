ExternalFigure = function#Place external image
### Place a Figure from a file.
(key,
### identifier for the figure being referenced
caption=TRUE,
### logical: place figure caption?
width,
### the figure width in inches. Defaults to knitr global chunk setting
height
### the figure height in inches. Defaults to knitr global chunk setting
){
  if(caption)
    lbl = renderMarkdown(text=labelFigure(key))
  else
    lbl = NULL
  if(missing(width))
    width = opts_chunk$get('fig.width')    
  if(missing(height))
    height = opts_chunk$get('fig.height')
  # convert dimensions in inches to pixels
  width = width*opts_chunk$get('dpi')
  height = height*opts_chunk$get('dpi')
  cat('<figure>',
      '<img src="', placeFigure(key), '" width="', width, 
      'in" height="', height, 'in" />',
      '<figcaption>', lbl, '</figcaption>',
      '</figure>', sep="")
### No direct return value. Prints HTML to the console
### to be read 'asis' by a knitr code chunk.
}
