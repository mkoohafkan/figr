cite <- function(key, link, type){
  if(missing(link))
    link <- opts_figr$get('link')
  env <- specenv(type)
  tag <- get('anchortag', envir=env)  
  # update rank if this is first reference
  r <- updaterank(key, envir=env)
  # create the label
  lbl <- paste(type, r)  
  if(link) # add link reference
    lbl <- paste("[", lbl, "](#", tag, key, ")", sep="")
  return(lbl)
}
