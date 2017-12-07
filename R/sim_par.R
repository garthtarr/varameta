#' Things to investigate in the simulated data.
#'
#' A list containing the various things I wanted to simulate over.
#'
#' @format A list of variables.
#' \describe{
#'   \item{dist}{Distribution string in `R`-interpretable format. To convert the
#'   string back and forth from true name and `R`-interpretable, use the
#'   `dontpanic::dist_name` function.}
#'   \item{n}{Sample size for this set of trials.}
#'   \item{arm_adj}{Adjustment between first and second arm.}
#'   \item{trial}{Index of trial for this set of simulation parameters.}
#' }
"sim_par"
