% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SL_wrappers.R
\name{survSL.pchSL}
\alias{survSL.pchSL}
\title{Wrapper function for piecewise constant hazard SuperLearner}
\usage{
survSL.pchSL(
  time,
  event,
  X,
  newX,
  new.times,
  obsWeights,
  breaks,
  SL.library,
  ...
)
}
\arguments{
\item{time}{Observed follow-up time; i.e. minimum of the event and censoring times.}

\item{event}{Observed event indicator; i.e, whether the follow-up time corresponds to an event or censoring.}

\item{X}{Training covariate data.frame.}

\item{newX}{Test covariate data.frame to use for prediction. Should have the same variable names and structure as \code{X}.}

\item{new.times}{Times at which to obtain to obtain the predicted survivals.}

\item{obsWeights}{Observation weights.}

\item{breaks}{Either the number of intervals to use or the endpoints of the intervals.}

\item{SL.library}{Library to use for SuperLearning of individual bins.}

\item{...}{Additional ignored arguments.}
}
\description{
This prediciton algorithm assumes that the hazard is constant on intervals, and estimates the hazard
within each interval conditional on covariates flexibly using SuperLearner.
}
