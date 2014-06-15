place <- function(key, type){
  env = specenv(type)
  updaterank(key, envir=env)
  get(key, envir=env)
}
