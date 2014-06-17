citeChunk <- function#Cite code chunk
### Cite a code chunk
(key,
### the chunk label
link
### logical: If TRUE, relative link to chunk is included
){
  cite(key, link, type="Chunk")
### a chunk citation for cross-referencing.
}
