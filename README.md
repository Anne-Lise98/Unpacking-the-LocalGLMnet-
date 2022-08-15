# Unpacking-the-LocalGLMnet-
The R files accompanying my thesis 'Unpacking the LocalGLMnet framework: a new insightful deep learning structure'.
These files are based on the code to the article "Insights from Inside Neural Networks" from A Ferrario, A. Noll and M.V. Wüthrich. This code, written by D. Meier and J. Schelldorfer is available on https://github.com/JSchelldorfer/ActuarialDataScience/tree/master/2%20-%20Insights%20from%20Inside%20Neural%20Networks

Moreover, the files are based on the code to the article "LocalGLMnet: a deep learning architecture for actuaries" from J. Schelldorfer and M. V. Wüthrich. This code, written by D. Meier and J. Schelldorfer, is available on https://github.com/JSchelldorfer/ActuarialDataScience/tree/master/10%20-%20LocalGLMnet

As the thesis is accompanied by various R files, the order to run the files, making sure that everything works smoothly, is provided here: 
1. Download the PC_data and the 'shape file Belgie postcodes' map. 
2. Run preprocessing_cat_onehot.R.
In this file, a function generating one-hot encoding for categorical variables is defined.
3. Run scale_no_attr.R.
In this file, a function generating standardized variables for the binary and continuous variables is defined.
4. Run data_preprocessing.R 
This file contains the data pre-processing of the data set at hand. Various covariates are capped, standardized and analysed. This way, interpretable plots are obtained for the available data set. 
5. Run plot_freq.R
In this file, a function generating plots for the frequency obtained by a model is defined.
6. Run GLM.R 
A generalized linear model is fitted on the learning data. After this, the number of claims on the testing data is estimated and a likelihood ratio test is considered. 
7. Run keras_plot_loss_min.R
In this file, a function generating plots for the validation and training loss for the neural networks and LocalGLMnets is determined. These plots indicate the epoch at which we obtain the smallest validation loss.
8. Run Neural Networks.R 
Various neural networks to predict the number of claims are computed. 
9. Run covariatecontributions.R
In this file, a function plotting the covariate contributions for the continuous covariates for a LocalGLMnet is determined.
10. Run covariatecontributions_binary.R
In this file, a function plotting the covariate contributions for the binary covariates for a LocalGLMnet is determined.
11. Run regressionattention.R 
This function plots the regression attentions with the corresponding coverage ratio area for the binary and continuous covariates.
12. Run LocalGLMnet.R
Various LocalGLMnets are computed. Moreover, the various covariates are analysed.


