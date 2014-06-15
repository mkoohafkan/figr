add <- structure(function(key, figure, caption, type){
  env = specenv(type)
  # index the figure
  assign(key, figure, envir=env)
  if(!missing(caption)) # add the caption
    addcaption(key, caption, envir=env)
  invisible(NULL)
}, ex=function(){
})
