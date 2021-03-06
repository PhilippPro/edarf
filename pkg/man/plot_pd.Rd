% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot_pd}
\alias{plot_pd}
\title{Plot partial dependence from random forests}
\usage{
plot_pd(pd, facet = NULL, to_plot = NULL)
}
\arguments{
\item{pd}{object of class \code{c("pd", "data.frame")} as returned by
\code{\link{partial_dependence}}}

\item{facet}{a character vector indicating the variable that should be used
to facet on if interaction is plotted. If not specified the variable with less 
unique values is chosen.}

\item{to_plot}{a character vector indicating what variables to plot. If not
specified then all variables are plotted}
}
\value{
a ggplot2 object
}
\description{
Plot partial dependence from random forests
}
\examples{
library(randomForest)
library(edarf)
data(iris)
fit <- randomForest(Species ~ ., iris)
pd <- partial_dependence(fit, iris, "Petal.Width")
plot_pd(pd)
}

