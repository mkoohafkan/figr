labelFigure <- function#Figure caption
### Place a figure caption
(key, 
### identifier for the figure being referenced
link=TRUE,
### logical: If TRUE, relative link to figure is included
punc=":"
### separator to use between reference number and caption
### Defaults to ":"
){
  label(key, link, punc, type='Figure')
### The figure caption
}
