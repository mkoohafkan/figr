anchor <- function(key, type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure')
    paste(figTag, key, sep='')
  else if(type == 'Table')
    paste(tabTag, key, sep='')
}
