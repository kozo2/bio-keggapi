\name{bget}
\alias{bget}

\title{Client-side interface to obtain KEGG database entries by a list
  of entry identifiers}
\description{
  \code{bget} is used for retrieving KEGG database entries specified by
  a list of entry identifiers. It accepts all the KEGG bget commond line
  options as a character string.
}

\arguments{
  \item{bget.command}{\code{bget.command} a character string of KEGG
    bget command}
}

\usage{
bget(bget.command)
}

\value{
  a character string of KEGG bget search result.
}
\references{\url{http://www.kegg.jp/kegg/docs/keggapi.html}}
\author{Kozo Nishida}

\examples{
  # retrieve two KEGG/GENES entries
	bget(c("hsa:10458", "ece:Z5100"))
}
\keyword{datasets}
