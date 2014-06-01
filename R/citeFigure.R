citeFigure <-
function# get figure number
### return the figure reference
(key,
### identifier for the figure being referenced
link=TRUE,
### logical: If TRUE, relative link to figure is included
caption=FALSE
### Logical: If TRUE, the entire caption is returned.
## If FALSE, only the figure number is returned.
){
  cite(key, link, caption, type='Figure')
### a figure citation for cross-reference or labeling.
}
