anchor <- function(key, type){
  env = specenv(type)
  paste(get('anchortag', envir=env), key, sep='')
  }
