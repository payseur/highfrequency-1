\name{rTPVar}
\alias{rTPVar}
\title{
Realized tri-power variation of highfrequency return series.
}
\description{
 
Function returns the rTPVar, defined in Andersen et al. (2012).

Assume there is \eqn{N} equispaced returns in period \eqn{t}. Let \eqn{r_{t,i}} be a return (with \eqn{i=1, \ldots,N}) in period \eqn{t}.

Then, the rTPVar is given by
\deqn{
\mbox{rTPVar}_{t}=\frac{N}{N-2} \left( 2^{1/3} \frac{\Gamma \left(5/6\right)}{ \Gamma \left(1/2\right)} \right)^{-3} \sum_{i=3}^{N} \mbox({|r_{t,i}|}^{2/3} {|r_{t,i-1}|}^{2/3} {|r_{t,i-2}|}^{2/3})
}
}
\usage{
rTPVar (rdata, align.by=NULL, align.period=NULL, makeReturns=FALSE,...)
}

\arguments{
  \item{rdata}{a zoo/xts object containing all returns in period t for one asset.}
  \item{align.by}{a string, align the tick data to "seconds"|"minutes"|"hours"}
  \item{align.period}{an integer, align the tick data to this many [seconds|minutes|hours].}  
  \item{makeReturns}{boolean, should be TRUE when rdata contains prices instead of returns. FALSE by   default.} 
  \item{...}{additional arguments.}
}

\value{
numeric
}
\references{
Andersen, T. G., D. Dobrev, and E. Schaumburg (2012). Jump-robust volatility estimation using nearest neighbor truncation. Journal of Econometrics, 169(1), 75- 93.
}
\author{
Giang Nguyen, Jonathan Cornelissen and Kris Boudt
}

\examples{
data(sample_tdata)
rTPVar(rdata= sample_tdata$PRICE, align.by= "minutes", align.period =5, makeReturns= TRUE)
rTPVar
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ highfrequency }
\keyword{ rTPVar}
