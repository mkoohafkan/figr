specenv <- function#Environment specifier
### specify environment to use.
(type
### the type of object to be placed, e.g. "Figure" or "Table"
){
##details<<This is an internal function used by figr for 
##object management. It should not be called directly.
  match.arg(type, opts_figr$get('types'))
  if(type == "Figure")
    e <- figEnv
  else if(type == "Table")
    e <- tabEnv
  else if(type == "Chunk")
    e <- chunkEnv
  return(e)
### The environment to be used
}
