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
  add(key, table, caption, type='Table')
### Table is indexed. No return value
}
