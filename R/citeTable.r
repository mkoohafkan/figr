citeTable <-
function# get table number
### return the table reference
(key,
### identifier for the table being referenced
caption=FALSE
### Logical: If TRUE, the entire caption is returned.
## If FALSE, only the table number is returned.
){
  # update rank if this is first reference
  r = updateRank(key, envir=tabEnv)
  lbl = paste('Table ', r, sep='')  
  if(caption)
	lbl = paste(lbl, ': ', getCaption(key, envir=tabEnv), sep='')
  return(lbl)
### a table citation for cross-reference or labeling.
}
