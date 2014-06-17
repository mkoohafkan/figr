anchorChunk <- function#Anchor chunk
### Produce an anchor tag for a chunk using the chunk name
(key
### the key for the chunk referenced. It is recommended you use the chunk label
){
  anchor(key, type="Chunk")
### anchor text to be processed by the anchor hook
}
