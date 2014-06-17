.onLoad = function(libname, pkgname){
  parentenv = getNamespace("figr")
  # options environment
  optsfigr <-new.env(parent=parentenv)
  assign('optsfigr', optsfigr, parentenv)
  suppressMessages(opts_figr$restore()) 
  # figure environment
  figEnv = new.env(parent=parentenv)
  assign('maxrank', 0, figEnv)
  assign('anchortag', 'f-', figEnv)
  assign('figEnv', figEnv, parentenv)
  # table environment
  tabEnv = new.env(parent=parentenv)
  assign('maxrank', 0, tabEnv)
  assign('anchortag', 't-', tabEnv)
  assign('tabEnv', tabEnv, parentenv)
  # chunk environment
  chunkEnv = new.env(parent=parentenv)
  assign('maxrank', 0, chunkEnv)
  assign('anchortag', 'c-', chunkEnv)
  assign('chunkEnv', chunkEnv, parentenv)
  # knitr hook definitions
  knit_hooks$set(anchor = function(before, options, envir) {
    if (before){ 
      if(is.character(options$anchor))
	    paste('<a name="', options$anchor, '"></a>', sep='')
      else if(as.logical(options$anchor))
	    paste('<a name="', anchorChunk(options$label), '"></a>', sep='')
	}
  })
  opts_chunk$set(anchor=FALSE)
  knit_hooks$set(plot = function(x, options) {
    paste('<figure><img src="',
          opts_knit$get('base.url'), paste(x, collapse = '.'),
          '"><figcaption>', text=options$fig.cap, '</figcaption></figure>',
          sep = '')
  })
  opts_knit$set(eval.after='fig.cap')
}
