% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unsup.R
\name{randomforest_dist}
\alias{randomforest_dist}
\title{compute the distance between features using a random forest}
\usage{
randomforest_dist(data, newdata = NULL, method = "party", ...)
}
\arguments{
\item{data}{a matrix or data.frame for training}

\item{newdata}{a matrix or data.frame to compute distance using the training data}

\item{method}{the reandom forest implementation to use: "party", "randomForest", or "randomForestSRC":
default is "party"}

\item{...}{additional arguments to pass to the random forest method used for training}
}
\description{
compute the distance between features using a random forest
}
\examples{

data(iris)
d <- randomforest_dist(iris[, -ncol(iris)], method = "randomForest")
}

