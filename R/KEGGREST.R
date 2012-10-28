library("RCurl")

convertTable <- function(res){
  rows <- strsplit(res, "\n")
  rows.len <- length(rows[[1]])
  result <- matrix(unlist(lapply(rows, strsplit, "\t")), nrow=rows.len, byrow=T)
  result
}

list.organisms <- function(){ 
  url <- "http://rest.kegg.jp/list/organism"
  print(url)
  response <- getURL(url)
  table <- convertTable(response)
  table
}

list.pathways <- function(org){
  url <- paste("http://rest.kegg.jp/list/pathway", org, sep="/")
  print(url)
  response <- getURL(url)
  table <- convertTable(response)
  table
}

bconv <- function(target.db, id.list){
  url <- paste("http://rest.kegg.jp/conv", target.db, paste(id.list, collapse="+"), sep="/")
  print(url)
  response <- getURL(url)
  table <- convertTable(response)
  table
}

bget <- function(dbentries, option=""){
  url <- paste("http://rest.kegg.jp/get", paste(dbentries, collapse="+"), option, sep="/")
  print(url)
  response <- getURL(url)
  response
}

get.genes.by.pathway <- function(pathway.id){
  url <- paste("http://rest.kegg.jp/link", substr(pathway.id, 6, 8), pathway.id, sep="/")
  print(url)
  response <- getURL(url)
  table <- convertTable(response)
  table
}
