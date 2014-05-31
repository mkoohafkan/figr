placeFigure <-
function# figure placement and ranking
### places a figure in the document, i.e. determines
### the figure number for cross-referencing
(key
### identifier for the object being referenced
){
  # update rank if this is first reference
  updateRank(key, envir=figEnv)
  get(key, envir=figEnv)
### the referenced figure
}
