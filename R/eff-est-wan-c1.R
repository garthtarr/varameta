#' WanC1 effect estimator
#' 
#' Calculate effects' estimates for mean and sd using WanC1's method.
#' 
#' @param a Minimum value of sample.
#' @param m Median of sample.
#' @param b Maximum value of sample.
#' @param n Sample size.
#' 
#' @export

eff_est_wan_c1 <- function(a, m, b, n) {
  x.bar = (a + 2 * m + b) / 4
  s = (b - a) / (2 * qnorm(
    (n - 0.375) / (n + 0.25)
  ))
  
  return(list(
    centre = x.bar,
    se = s / sqrt(n)
  ))
}