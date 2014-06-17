addFigure <-
function# create a figure
### create a reference to a figure (e.g. a ggplot variable) 
(key,
### identifier for the figure being referenced
figure,
### the figure object, or a path to an image file
caption
### the figure caption (optional)
){
  if(is.character(figure)){
    # copy external file to knitr's folder
    newpath <- paste(opts_chunk$get('fig.path'), basename(figure), sep="")
    if(file.exists(newpath))
      stop("knitr figure ", newpath, "Already exists.")
	# if copy fails, assume it's a URL
    if(!file.copy(figure, newpath)){
	  file.create(newpath)
	  download.file(figure, newpath, quiet=TRUE)
	}
    figure <- newpath
  }
  add(key, figure, caption, type='Figure')
### Figure is registered. No return value
}
