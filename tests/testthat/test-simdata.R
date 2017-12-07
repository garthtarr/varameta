library(varameta)

context("data")

check_rows <- function() {
  sim_data %>%
    dplyr::count(n, rdist, rpar_1, as.character(rpar_2), arm_adj) %>%
    dplyr::filter(nn != sim_par$trials) %>%
    nrow()
}

#
# test_that(
#   expect_equal(check_rows(), 0L)
# )
