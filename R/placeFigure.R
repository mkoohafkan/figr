placeFigure <-
function# figure placement and ranking
### places a figure in the document, i.e. determines
### the figure number for cross-referencing
(key
### identifier for the figure being referenced
){
  place(key, type='Figure')
### the referenced figure
}
