addTable <-
function# create a table
### create a reference to a table (e.g. a kable object) 
(key,
### identifier for the table being referenced
table,
### the table object
caption
### the table caption (optional)
){
  # index the table
  assign(key, table, envir=tabEnv)
  if(!missing(caption))
    addCaption(key, caption, envir=tabEnv)
  invisible(NULL)
### Table is indexed. No return value
}
