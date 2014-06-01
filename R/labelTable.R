labelTable <- function#Table caption 
### Place a table caption
(key, 
### identifier for the table being referenced
punc=":"
### seperator to use between reference number and caption
### Defaults to ":"
){
  label(key, punc, type='Table')
### The table caption
}
