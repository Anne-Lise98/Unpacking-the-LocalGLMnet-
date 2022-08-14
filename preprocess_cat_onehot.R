#This function is defined to transform categorical variables using one-hot encoding. 
#This function is replicated from the code written by J. Schelldorfer and M. V. Wüthrich, corresponding to their article 
#"LocalGLMnet: a deep learning architecture for actuaries". 
#The original code can be found here: https://github.com/JSchelldorfer/ActuarialDataScience/tree/master/10%20-%20LocalGLMnet

preprocess_cat_onehot <- function(data, varName, prefix) {
  varData <- data[[varName]]
  X <- as.integer(varData)
  n0 <- length(unique(X))
  n1 <- 1:n0
  addCols <- purrr::map(n1, function(x, y) {as.integer(y == x)}, y = X) %>%
    rlang::set_names(paste0(prefix, n1))
  cbind(data, addCols)
}
