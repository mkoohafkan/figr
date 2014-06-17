label <- function(key, label.link, label.punc, type){
  env = specenv(type)
  if(missing(label.link))
    link <- opts_figr$get('label.link')
  if(missing(label.punc))
    label.punc <- opts_figr$get('label.punc')
  paste(renderMarkdown(text=paste(paste(cite(key, link=label.link, type=type), 
                                        label.punc, sep=""), 
                                  getcaption(key, envir=env))))
}
