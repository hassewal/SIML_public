
######### Installation guide of Tensorflow+keras3 in R's cloud service ###########
##### Run these exact lines of code in an R-project on Posit Cloud

#  Install R packages
install.packages("reticulate")
install.packages("tensorflow")

#  Load reticulate
library(reticulate)

# Create Python virtual environment
virtualenv_create("r-tensorflow")

# Install TensorFlow in the Python virtualenv
virtualenv_install("r-tensorflow", packages = "tensorflow")

# Point reticulate to the virtualenv
use_virtualenv("r-tensorflow", required = TRUE)

# Load the R tensorflow package
library(tensorflow)

# Test TensorFlow
tf$constant("Hello TensorFlow!")

# Finally install keras3
install.packages("keras3")

##########################

# after running all the installations you can remove the code for installing and just call

# library(tensorflow)
# library(keras3)

# and then you are ready to go.

