.onLoad = function(libname, pkgname){
  parentenv = getNamespace("figr")
  # figure environment
  figEnv = new.env(parent=parentenv)
  figTag = 'f-'
  assign('maxrank', 0, figEnv)
  assign('figEnv', figEnv, parentenv)
  assign('figTag', figTag, parentenv)
  # table environment
  tabEnv = new.env(parent=parentenv)
  tabTag = 't-'
  assign('maxrank', 0, tabEnv)
  assign('tabEnv', tabEnv, parentenv)
  assign('tabTag', tabTag, parentenv)
}
