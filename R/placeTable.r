placeTable <-
function# table placement and ranking
### places a table in the document, i.e. determines
### the table number for cross-referencing
(key,
### identifier for the table being referenced
caption
){
  if(as.logical(caption))
    kable(place(key, type='Table'), format="html", 
          caption=renderMarkdown(text=labelTable(key)))
  else if(is.character(caption))
    kable(place(key, type='Table'), format="html", 
          caption=renderMarkdown(caption))
  else
    kable(place(key, type='Table'), format="html")
### the referenced table
}
