citeTable <-
function# get table number
### return the table reference
(key,
### identifier for the table being referenced
link
### logical: If TRUE, relative link to figure is included
){
  cite(key, link, type='Table')
### a table citation for cross-reference or labeling.
}
