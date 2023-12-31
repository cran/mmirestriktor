% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replext_funcs.R
\name{generate_datasets_reg}
\alias{generate_datasets_reg}
\title{Generate Multiple Datasets for Regression Simulation}
\usage{
generate_datasets_reg(S = 20000, n, p, f2, rho, beta = 0.1)
}
\arguments{
\item{S}{The number of datasets to generate, default is 20000.}

\item{n}{The number of observations in each dataset.}

\item{p}{The number of predictors in the regression model for each dataset.}

\item{f2}{The effect size for each dataset, defined as (f^2 = R^2 / (1 - R^2)).}

\item{rho}{The correlation coefficient between predictors in each dataset.}

\item{beta}{The regression coefficients for the predictors in each dataset,
either as a single value or a vector of length (p).}
}
\value{
A list of data frames, each representing a simulated dataset for
regression analysis. Each data frame contains columns for the response
variable 'y' and predictors 'x1', 'x2', ..., 'xp'.
}
\description{
This function generates a specified number of datasets for regression analysis
simulations. Each dataset is generated using the \code{sim_reg} function, based on
given parameters like sample size, number of predictors, effect size, and
correlation coefficient.
}
\details{
The function uses \code{sim_reg} to simulate individual datasets, which
are then combined into a list. Each dataset is a data frame with named
columns for the response variable and predictors.
}
\examples{
datasets <- generate_datasets_reg(S = 2, n = 50, p = 3, f2 = 0.10, rho = 0.5)

}
\references{
Vanbrabant, Leonard; Van De Schoot, Rens; Rosseel, Yves (2015). Constrained
statistical inference: sample-size tables for ANOVA and regression. Frontiers
in Psychology, 5. DOI:10.3389/fpsyg.2014.01565.
URL: https://www.frontiersin.org/articles/10.3389/fpsyg.2014.01565
}
