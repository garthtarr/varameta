#' WanC3 effect estimator
#' 
#' Calculate effects' estimates for mean and sd using WanC3's method.
#' 
#' @param q.1 First quartile of sample.
#' @param m Median of sample.
#' @param q.3 Third quartile of sample.
#' @param n Sample size.
#' 
#' @export

eff_est_wan_c3 <- function(q.1, m, q.3, n) {
  x.bar <- (q.1 + m + q.3) / 3
  s <- (q.3 - q.1) / (2 * qnorm(
    (0.75 * n - 0.125) / (n + 0.25)
  ))
  return(list(
    centre = x.bar,
    se = s / sqrt(n)
  ))
}