## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(varameta)
library(tidyverse)

## ------------------------------------------------------------------------
# Take a look at the distributions.

rdists %>% {
  tibble(
    distribution = map_chr(., "rdist"),
    par_1 = map_dbl(., c(2, 1)),
    par_2 = map(., c(2, 2))
  )
} %>% knitr::kable()


## ------------------------------------------------------------------------
# Hozo pars.
hozo_pars <- cross(list(
  rdists = rdists,
  sample_sizes = seq(8, 100, by = 2),
  trial = c(1:200)
))

# Convert to a tibble.
hozo_sim <- hozo_pars %>% {
  tibble( # Using numbers for testing.
    # rdist = map_chr(., c(1, 1)),
    # n = map_int(., 2),
    trial = map_int(., "trial")
  )
}

hozo_sim %>% head()


