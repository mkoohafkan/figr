specenv = function#Environment specifier
### specify environment to use.
(type
### the type of object to be placed, e.g. "Figure" or "Table"
){
##details<<This is an internal function used by figr for 
##object management. It should not be called directly.
  match.arg(type, c("Figure", "Table"))
  if(type == "Figure")
    e = figEnv
  else if(type == "Table")
    e = tabEnv
  return(e)
### The environment to be used
}
