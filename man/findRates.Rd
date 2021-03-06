% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findRates.R
\name{findRates}
\alias{findRates}
\title{Use diversitree to find ML speciation and extinction rates}
\usage{
findRates(tree, prop.complete, ini.lambda = 1, ini.mu = 0.1, rate.estimate)
}
\arguments{
\item{tree}{A phylogeny in ape format.}

\item{prop.complete}{The proportion of all species in the tree that are currently
contained in it. For instance, if a tree contains 9 species, but there should be
10 species in the tree, set sampling to 0.9.}

\item{ini.lambda}{Initial speciation value for the optimization. Defaults to 1.}

\item{ini.mu}{Initial extinction value for the optimization. Defaults to 0.1.}

\item{rate.estimate}{Whether to use 'laser', 'ape', or 'diversitree' to
calculate diversification rates. The latter is the only of those that can account for
missing taxa, but in my experience returns systematically biased values.}
}
\value{
A named numeric vector with the estimated speciation and extinction rates.
}
\description{
Makes an attempt to automatically calculate lambda and mu using diversitree given
starting values for the optimization.
}
\details{
Add details.
}
\examples{
#load a molecular tree up
data(bird.families)

tree <- multi2di(bird.families)

findRates(tree=tree, prop.complete=0.95, rate.estimate="diversitree")
}
\references{
ETM unpublished
}
