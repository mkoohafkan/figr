citeTable <-
function# get table number
### return the table reference
(key,
### identifier for the table being referenced
link=TRUE,
### logical: If TRUE, relative link to figure is included
caption=FALSE
### Logical: If TRUE, the entire caption is returned.
## If FALSE, only the table number is returned.
){
  cite(key, link, caption, type='Table')
### a table citation for cross-reference or labeling.
}
