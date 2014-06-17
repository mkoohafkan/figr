opts_figr <- list(
get = function(opt){ # get options
  opts <- ls(envir=optsfigr)
  if(missing(opt)){
  # display current settings
  for(opt in opts)
      message(opt, '\t=\t', opts_figr$get(opt))
  } else {
    # return specified option
    match.arg(opt, opts)
    get(opt, envir=optsfigr, inherits=FALSE)
  }
}, set = function(opt, val){ # set options
  match.arg(opt, ls(envir=optsfigr))
  # value checking
  stopmessage <- function(o)
    stop('Value of figr option "', key, '" must be ', o, '.')
  if(opt == 'link' | opt == 'label.link')
    if(!is.logical(val))
	  stopmessage('TRUE or FALSE')
  if(opt == 'label.punc')
    if(!is.character(opt))
	  stopmessage('a character')
  if(opt == 'types')
    stop('figr option "', key, '" cannot be changed.')
  # assign value
  assign(opt, val, envir=optsfigr)
  invisible(NULL)
}, restore = function(){
  # default settings
  assign('link', TRUE, envir=optsfigr)  
  assign('label.link', TRUE, envir=optsfigr)
  assign('label.punc', ":", envir=optsfigr)
  assign('types', c("Figure", "Table", "Chunk"), envir=optsfigr)
  opts_figr$get()
})
