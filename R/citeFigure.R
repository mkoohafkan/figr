citeFigure <-
function# get figure number
### return the figure reference
(key,
### identifier for the figure being referenced
link=TRUE
### logical: If TRUE, relative link to figure is included
){
  cite(key, link, type='Figure')
### a figure citation for cross-reference or labeling.
}
