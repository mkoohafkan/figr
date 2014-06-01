place <- function(key, type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure')
    env = figEnv
  else if(type == 'Table')
    env = tabEnv
  updateRank(key, envir=env)
  get(key, envir=env)
}
