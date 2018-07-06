% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tile.R
\name{tiler}
\alias{tiler}
\alias{ptiler}
\title{Splits the input to a list according to the tiling window size.}
\usage{
tiler(.x, .size = 1)

ptiler(..., .size = 1)
}
\arguments{
\item{.x}{An object to slide over.}

\item{.size}{An integer for window size. If positive, moving forward from left
to right; if negative, moving backward (from right to left).}

\item{...}{Multiple objects to be splitted in parallel.}
}
\description{
Splits the input to a list according to the tiling window size.
}
\examples{
.x <- 1:5
.y <- 6:10
.z <- 11:15
.lst <- list(x = .x, y = .y, z = .z)
.df <- as.data.frame(.lst)

tiler(.x, .size = 2)
tiler(.lst, .size = 2)
ptiler(.lst, .size = 2)
ptiler(list(.x, .y), list(.y))
ptiler(.df, .size = 2)
ptiler(.df, .df, .size = 2)
}