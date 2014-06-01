cite <- function(key, link, type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure'){
    env = figEnv
    tag = figTag
  }
  else if(type == 'Table'){
    env = tabEnv
    tag = tabTag
  }
  # update rank if this is first reference
  r = updaterank(key, envir=env)
  # create the label
  lbl = paste(type, r)  
  if(link) # add link reference
    lbl = paste("[", lbl, "](#", tag, key, ")", sep="")
  return(lbl)
}
