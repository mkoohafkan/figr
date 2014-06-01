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
  add(key, figure, caption, type='Figure')
### Figure is indexed. No return value
}
