citeFigure <-
function# get figure number
### return the figure reference
(key,
### identifier for the object being referenced
caption=FALSE
### Logical: If TRUE, the entire caption is returned.
## If FALSE, only the figure number is returned.
){
  # update rank if this is first reference
  r = updateRank(key, envir=figEnv)
  lbl = paste('Figure ', r, sep='')  
  if(caption)
	lbl = paste(lbl, ': ', getCaption(key, envir=figEnv), sep='')
  return(lbl)
### a figure citation for cross-reference or labeling.
}
