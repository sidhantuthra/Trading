% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VariationOfInformation.R
\name{VariationOfInformation}
\alias{VariationOfInformation}
\title{Variation of Information}
\usage{
VariationOfInformation(x, y, m = 2, r = 0.2, normalized = TRUE)
}
\arguments{
\item{x}{a vector containing the track record of the underlying asset/strategy, this will be normalized during the algorithm}

\item{y}{a vector containing the track record of the underlying asset/strategy, this will be normalized during the algorithm}

\item{m}{an integer value defining the embedding dimension , default value is 2}

\item{r}{a  double  value defining the tolerance, default value is 0.2}

\item{normalized}{a boolean value so as to bound the return value between 0 and 1, default value is TRUE}
}
\value{
A double value containing the variation of information
}
\description{
Calculates the variation of information of the track records of two assets/strategies based on the sample entropy.
}
\examples{

x = PerformanceAnalytics::edhec[,c("Short Selling")]
y = PerformanceAnalytics::edhec[,c("Convertible Arbitrage")]
variation_of_information = VariationOfInformation(x, y, m=2, r=0.2, normalized = TRUE)

}
\references{
Lopez de Prado, Marcos, Codependence (Presentation Slides) (January 2, 2020). Available at SSRN: https://ssrn.com/abstract=3512994
}
\author{
Tasos Grivas <tasos@openriskcalculator.com>
}
