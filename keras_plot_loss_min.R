#This function plots the validation and training loss for the neural networks and LocalGLMnets, indicating the epoch at which we obtain the smallest validation loss. 
#This function is replicated from the code written by J. Schelldorfer and M. V. Wüthrich, corresponding to their article 
#"LocalGLMnet: a deep learning architecture for actuaries". 
#The original code can be found here: https://github.com/JSchelldorfer/ActuarialDataScience/tree/master/10%20-%20LocalGLMnet

ax_limit <- c(0,50000)
line_size <- 1.1

keras_plot_loss_min <- function(x, seed) {
  x <- x[[2]]
  ylim <- range(x)
  vmin <- which.min(x$val_loss)
  df_val <- data.frame(epoch = 1:length(x$loss), train_loss = x$loss, val_loss = x$val_loss)
  df_val <- gather(df_val, variable, loss, -epoch)
  plt <- ggplot(df_val, aes(x = epoch, y = loss, group = variable, color = variable)) +
    geom_line(size = line_size) + geom_vline(xintercept = vmin, color = "green", size = line_size) +
    labs(title = paste("Train and validation loss for seed", seed),
         subtitle = paste("Green line: Smallest validation loss for epoch", vmin))
  suppressMessages(print(plt))
}
