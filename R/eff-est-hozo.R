#' Hozo effect estimator
#' 
#' Calculate effects' estimates for mean and sd using Hozo's method. This formula
#' was taken from Wan's paper, where Hozo's method is summarised, equation (6).
#' 
#' @param a Minimum value of sample.
#' @param m Median of sample.
#' @param b Maximum value of sample.
#' @param n Sample size.
#' 
#' @export

eff_est_hozo <- function(a, m, b, n) {
  x.bar <- (a + 2 * m + b) / 4
  
  s <- 
    if (n <= 15) {
      1 / sqrt(12) * sqrt(
        (b - a)^2 +
          (a - 2 * m + b)^2 / 4
      )
    } else if (n > 15 & n <= 70) {
      (b - a) / 4
    } else if (n > 70) {
      (b - a) / 6
    } else {
      cat("Error: n should be a sample size.")
    }
  
  return(list(
    centre = x.bar,
    se = s / sqrt(n)
  ))
}