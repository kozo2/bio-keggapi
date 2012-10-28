library("RCurl")

list.organisms <- function(){
  response <- getURL("http://rest.kegg.jp/list/organism")
  rows <- strsplit(response, "\n")
  rows.len <- length(rows[[1]])
  result <- matrix(unlist(lapply(rows, strsplit, "\t")), nrow=rows.len, byrow=T)
  result
}

list.pathways <- function(org){
  response <- getURL(paste("http://rest.kegg.jp/list/pathway/", org))
  rows <- strsplit(response, "\n")
  rows.len <- length(rows[[1]])
  result <- matrix(unlist(lapply(rows, strsplit, "\t")), nrow=rows.len, byrow=T)
  result
}