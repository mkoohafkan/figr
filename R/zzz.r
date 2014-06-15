.onLoad = function(libname, pkgname){
  parentenv = getNamespace("figr")
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
  # knitr hook definitions
  knit_hooks$set(anchor = function(before, options, envir) {
    if (before) 
      paste('<a name="', options$anchor, '"></a>', sep='')
  })
  knit_hooks$set(plot = function(x, options) {
    paste('<figure><img src="',
          opts_knit$get('base.url'), paste(x, collapse = '.'),
          '"><figcaption>', text=options$fig.cap, '</figcaption></figure>',
          sep = '')
  })
  opts_knit$set(eval.after='fig.cap')
}
