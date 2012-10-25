library("RCurl")

extractFromDefinitions <- function(def){
  res <- unlist(strsplit(def, "\n"))
}

list.organisms <- function(){
  orgs <- getURL("http://rest.kegg.jp/list/organism")
  extractFromDefinitions(orgs)
}