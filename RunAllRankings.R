# contest analysis

# Load package
# if you don't have one or more of these packages, you can install them like this: install.packages(c("rstan", "rethinking"))
rm (list = ls(all=TRUE))
library(rstan)
library(rethinking)


################# Running the models in the server

# Set local directory: the path to the folder containing the subfolders Code, Plots, and Data
#setwd("/Users/")

# Load helper functions
source("./Code/Functions.R")

# Format data
source("./Code/FormatDataRankings.R")


# Fit main stan models: m?
samps <- 8000 	#number of mcmc samples
num_chains <- 4 #number of mcmc chains

source("./Code/MainStanModelsMats_m1.R")
source("./Code/MainStanModelsMats_m2.R")
source("./Code/MainStanModelsMNP_m4.R")
source("./Code/MainStanModelsMNP_m5.R")


#Read in already-fit stanfit output 
saveRDS(mr1, "mr1_fit.rds") # save stanfit output 
saveRDS(mr2, "mr2_fit.rds") # save stanfit output 
saveRDS(mr4, "mr4_fit.rds") # save stanfit output 
saveRDS(mr5, "mr5_fit.rds") # save stanfit output 


mr1 <- readRDS("mr1_fit.rds")
mr2 <- readRDS("mr2_fit.rds")
mr4 <- readRDS("mr4_fit.rds")
mr5 <- readRDS("mr5_fit.rds")


# Process stan output and make figures
source("./Code/RankingsPlots.R")


