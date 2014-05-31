placeTable <-
function# table placement and ranking
### places a table in the document, i.e. determines
### the table number for cross-referencing
(key
### identifier for the table being referenced
){
  # update rank if this is first reference
  updateRank(key, envir=tabEnv)
  get(key, envir=tabEnv)
### the referenced table
}
