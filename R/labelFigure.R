labelFigure <- function#Figure caption
### Place a figure caption
(key, 
### identifier for the figure being referenced
punc=":"
### separator to use between reference number and caption
### Defaults to ":"
){
  label(key, punc, type='Figure')
### The figure caption
}
