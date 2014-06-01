label <- function(key, punc=":", type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure')
    env = figEnv
  else if(type == 'Table')
    env = tabEnv   
  paste(paste(cite(key, link=FALSE, type=type), punc, sep=""), 
        getcaption(key, envir=env))
}
