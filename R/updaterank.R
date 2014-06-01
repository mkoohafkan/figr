updaterank <- function(key, envir){
  varname = paste(key, 'rank', sep='')
  if(!exists(varname, envir=envir)){
    # update figure rankings
    mr = get('maxrank', envir=envir) + 1
    assign('maxrank', mr, envir=envir)
    # assign the figure rank
    assign(varname, mr, envir=envir)	
  }
  # return of figure or table specified by key 
  get(varname, envir=envir)
}
