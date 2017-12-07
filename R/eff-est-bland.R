#' Bland effect estimator
#' 
#' Calculate effects' estimates for mean and sd using Bland's method.
#' 
#' @param a Minimum value of sample.
#' @param q.1 First quartile of sample.
#' @param m Median of sample.
#' @param q.3 Third quartile of sample.
#' @param b Maximum value of sample.
#' @param n Sample size.
#' 
#' @export

eff_est_bland <- function(a, q.1, m, q.3, b, n) {
  x.bar <- (a + 2 * q.1 + 2 * m + 2 * q.3 + b) / 8
  s <- sqrt(
    1 / 16 * (a^2 + 2 * q.1^2 + 2 * m^2 + 2 * q.3^2 + b^2) +
      1 / 8 * (a * q.1 + q.1 * m + m * q.3 + q.3 * b) -
      1 / 64 * (a + 2 * q.1 + 2 * m + 2 * q.3 + b)^2
  )
  return(
    list(
      centre = x.bar,
      se = s / sqrt(n)
    )
  )
}