anchor <- function(key, type){
  match.arg(type, c('Figure', 'Table'))
  if(type == 'Figure')
    paste('<a name="', figTag, key, '"></a>', sep='')
  else if(type == 'Table')
    paste('<a name="', tabTag, key, '"></a>', sep='')
}
