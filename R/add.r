add <- function(key, figure, caption, type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure')
    env = figEnv
  else if(type == 'Table')
    env = tabEnv
  # index the figure
  assign(key, figure, envir=env)
  if(!missing(caption)) # add the caption
    addCaption(key, caption, envir=env)
  invisible(NULL)
}
