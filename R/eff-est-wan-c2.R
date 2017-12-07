#' WanC2 effect estimator
#' 
#' Calculate effects' estimates for mean and sd using WanC2's method.
#' 
#' @param a Minimum value of sample.
#' @param q.1 First quartile of sample.
#' @param m Median of sample.
#' @param q.3 Third quartile of sample.
#' @param b Maximum value of sample.
#' @param n Sample size.
#' 
#' @export

eff_est_wan_c2 <- function(a, q.1, m, q.3, b, n) {
  x.bar <- (a + 2 * q.1 + 2 * m + 2 * q.3 + b) / 8
  s <- 
    (b - a) / (4 * qnorm(
      (n - 0.375) / (n + 0.25)
    )) +
    (q.3 - q.1) / (4 * qnorm(
      (0.75 * n - 0.125) / (n + 0.25)
    ))
  return(list(
    centre = x.bar,
    se = s / sqrt(n)
  ))
}