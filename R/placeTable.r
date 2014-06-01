placeTable <-
function# table placement and ranking
### places a table in the document, i.e. determines
### the table number for cross-referencing
(key
### identifier for the table being referenced
){
  place(key, type='Table')
### the referenced table
}
