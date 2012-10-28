library("RCurl")

convertTable <- function(res){
  rows <- strsplit(res, "\n")
  rows.len <- length(rows[[1]])
  result <- matrix(unlist(lapply(rows, strsplit, "\t")), nrow=rows.len, byrow=T)
  result
}

list.organisms <- function(){
  response <- getURL("http://rest.kegg.jp/list/organism")
  table <- convertTable(response)
  table
}

list.pathways <- function(org){
  response <- getURL(paste("http://rest.kegg.jp/list/pathway", org, sep="/"))
  table <- convertTable(response)
  table
}
