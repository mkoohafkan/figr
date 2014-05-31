updateRank <-
function#update rankings of environment
(key,
### identifier for the object being referenced
envir
### the environment being updated
){
##details<<This is an internal function called by placeFigure() and citeFigure().
##It should not be called directly.
  varname = paste(key, 'rank', sep='')
  if(!exists(varname, envir=envir)){
    # update figure rankings
    mr = get('maxrank', envir=envir) + 1
    assign('maxrank', mr, envir=envir)
    # assign the figure rank
    assign(varname, mr, envir=envir)	
    }
	get(varname, envir=envir)
### Rank of figure or table specified by key.
}
