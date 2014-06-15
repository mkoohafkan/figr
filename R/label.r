label <- function(key, link, punc=":", type){
  env = specenv(type)
  paste(renderMarkdown(text=paste(paste(cite(key, link=link, type=type), 
                                        punc, sep=""), 
                                  getcaption(key, envir=env))))
}
