library(bayesAB)

bees_01_df <- read.csv(here::here("data/bees_data1.csv"), sep = ";")

ab1 <- bayesTest(
  A_data = bees_01_df$y2, # new intervention
  B_data = bees_01_df$y1, # existing intervention
  priors = c('alpha' = 1, 'beta' = 1),
  n_samples = 1e+05,
  distribution = "bernoulli"
)

ab_res <- summary(ab1)

ab_res$interval

plot(ab1)$posteriors

plot(ab1)$samples
