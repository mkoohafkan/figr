.onLoad = function(libname, pkgname){
  parentenv = getNamespace("figr")
  # figure environment
  figEnv = new.env(parent=parentenv)
  assign('maxrank', 0, figEnv)
  assign('figEnv', figEnv, parentenv)
  # table environment
  tabEnv = new.env(parent=parentenv)
  assign('maxrank', 0, tabEnv)
  assign('tabEnv', tabEnv, parentenv)
}
