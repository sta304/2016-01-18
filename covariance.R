# The numbers 1 to 5, divided by root 2, to give us a population variance of 1.
 
(values <- 1:5/sqrt(2))
(pop_var <- sum((values - mean(values))^2 / 5))

# Covariance after sampling with replacement, in which case the sample is a
# sequence of independent random variables.
two_with_repl <- replicate(100000, sample(values, 2, replace = TRUE))
cov(two_with_repl[1,], two_with_repl[2,])

# Covariance after sampling without replacement (the dependent case)
two_without_repl <- replicate(100000, sample(values, 2, replace = FALSE))
cov(two_without_repl[1,], two_without_repl[2,])

