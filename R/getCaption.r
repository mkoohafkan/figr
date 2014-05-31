getCaption <-
function#Get caption
### Get the figure or table caption.
(key, 
### identifier for the object being referenced
envir
### the environment where the referenced object resides
){
##details<<This is an internal function called by placeFigure() and citeFigure().
##It should not be called directly.
  varname = paste(key, 'caption', sep='')
  get(varname, envir=envir)
### The caption of the specified figure or table.
}