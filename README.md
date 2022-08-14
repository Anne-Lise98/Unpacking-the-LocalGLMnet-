# Unpacking-the-LocalGLMnet-
The R files accompanying my thesis 'Unpacking the LocalGLMnet framework: a new insightful deep learning structure'.

As the thesis is accompanied by various R files, the order to run the files, making sure that everything works smoothly, is provided here: 
1. Download the PC_data and the 'shape file Belgie postcodes' map. 
2. Run the file preprocessing_cat_onehot.
In this file, a function generating one-hot encoding for categorical variables is defined.
3. Run the file scale_no_attr.
In this file, a function generating standardized variables for the binary and continuous variables is defined.
4. data_preprocessing.R 
This file contains the data pre-processing of the data set at hand. Various covariates are capped, standardized and analysed. This way, interpretable plots are obtained for the available data set. 

