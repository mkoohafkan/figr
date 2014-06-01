getcaption <- function(key, envir){
  varname = paste(key, 'caption', sep='')
  get(varname, envir=envir)
}
