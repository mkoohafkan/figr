addCaption <- function#Add caption
### Add a caption to a referenced object
(key,
### identifier for the object being referenced
caption,
### The caption text
envir
### The environment where the referenced object resides
){
##details<<This is an internal function called by placeFigure() and citeFigure().
##It should not be called directly.
  varname = paste(key, 'caption', sep="")
  assign(varname, caption, envir=envir)
  invisible(NULL)
### Caption is updated. No return value.
}