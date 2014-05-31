addFigure <-
function# create a figure
### create a reference to a figure (e.g. a ggplot variable) 
(key,
### identifier for the figure being referenced
figure,
### the figure object
caption
### the figure caption (optional)
){
  # index the figure
  assign(key, figure, envir=figEnv)
  if(!missing(caption))
    addCaption(key, caption, envir=figEnv)
  invisible(NULL)
### Figure is indexed. No return value
}
