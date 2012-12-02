## checker helper
.checkCharMat <- function(res){
  all(checkTrue(all(dim(hoge) > 0)),
      checkTrue(class(res[1,1])=="character"))
}

.checkCharVec <- function(res){
  all(checkTrue(class(res)=="character"),
      checkTrue(length(res) > 0))
}
