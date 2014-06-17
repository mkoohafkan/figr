labelTable <- function#Table caption 
### Place a table caption
(key, 
### identifier for the table being referenced
link,
### logical: If TRUE, relative link to figure is included
punc
### seperator to use between reference number and caption
### Defaults to ":"
){
  label(key, link, punc, type='Table')
### The table caption
}
