% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grad.quad.R
\name{grad.quad}
\alias{grad.quad}
\title{Gradient of the squared error.}
\usage{
grad.quad(x, opts)
}
\arguments{
\item{x}{A p-dimensional vector where the gradient is computed.}

\item{opts}{List of parameters, which must include: \itemize{ \item \code{A},
a n*p design matrix, where each row is a sample and each column is a
variable \item \code{b}, a n-dimensional response vector. }}
}
\value{
The gradient of the function \eqn{f(x) = 1/(2n) || Ax - b ||^2},
  which is \eqn{A'*(Ax - b)/n}.
}
\description{
Computes the gradient of the sum of squared error: \deqn{f(x) = 1/(2n)
\sum_{i=1}^n ( x'*A_i - b_i)^2}.
}
\examples{
grad.quad(c(1,3,-2), list(A=diag(3), b=rep(1,3)))
}

