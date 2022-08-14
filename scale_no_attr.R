#This function is defined to standardize continuous and binary variables. 
#This function is replicated from the code written by J. Schelldorfer and M. V. Wüthrich, corresponding to their article 
#"LocalGLMnet: a deep learning architecture for actuaries". 
#The original code can be found here: https://github.com/JSchelldorfer/ActuarialDataScience/tree/master/10%20-%20LocalGLMnet

scale_no_attr <- function (x, center = TRUE, scale = TRUE) 
{
  x <- as.matrix(x)
  nc <- ncol(x)
  if (is.logical(center)) {
    if (center) {
      center <- colMeans(x, na.rm = TRUE)
      x <- sweep(x, 2L, center, check.margin = FALSE)
    }
  }
  else if (is.numeric(center) && (length(center) == nc)) 
    x <- sweep(x, 2L, center, check.margin = FALSE)
  else stop("length of 'center' must equal the number of columns of 'x'")
  if (is.logical(scale)) {
    if (scale) {
      f <- function(v) {
        v <- v[!is.na(v)]
        sqrt(sum(v^2)/max(1, length(v) - 1L))
      }
      scale <- apply(x, 2L, f)
      x <- sweep(x, 2L, scale, "/", check.margin = FALSE)
    }
  }
  else if (is.numeric(scale) && length(scale) == nc) 
    x <- sweep(x, 2L, scale, "/", check.margin = FALSE)
  else stop("length of 'scale' must equal the number of columns of 'x'")
  #if (is.numeric(center)) 
  #    attr(x, "scaled:center") <- center
  #if (is.numeric(scale)) 
  #    attr(x, "scaled:scale") <- scale
  x
}
