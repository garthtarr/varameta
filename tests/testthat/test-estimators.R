library(varameta)
context("Estimators")

# Should have variance in the effect_sd funciton.
#
# Wonder if I should be producing the standard error of the measure of centre.
# The variance of the sample median is dependent on n.

# test_that("effect_sd produces mean and sd", {
#   expect_equal(effect_sd(centre = 3, spread = 0.2, n = 3), 0.2)
#   expect_equal(effect_sd(centre = 3, spread = 1.4, n = 3), 1.4)
#   expect_equal(effect_sd(centre = 3,
#                          spread = 0.2^2,
#                          n = 3,
#                          spread_type = "var"), 0.2)
# })

test_that("effect_se produces mean and se", {
  expect_equal(effect_se(centre = 3, spread = 5, n = 10), 5 / sqrt(10))
})
