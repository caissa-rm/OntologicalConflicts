############################# STAN analysis ##############################################################

rstan_options(auto_write = TRUE) #to let stan make a copy of the model and use multiple cores
options(mc.cores = parallel::detectCores())


#define global variables
N <- nrow(dr_mats_m)            # total number of responses
M <- length(items)              # number of items to compare
  


#load models and data and starting conditions

model_file <- list.files(path="./Code", pattern="*.stan", full.names=TRUE) #list of paths to Stan models

dat2 <- list(
  N = N,            # total number of responses
  M = M,              # number of items to compare
  id = dr_mats_m$ID,              # vector of person IDs
  N_id = length(unique(dr_mats_m$ID)),    # number of people (raters)
  item1 = as.integer(dr_mats_m$IDitem1),    # vector of question rank1 IDs
  item2 = as.integer(dr_mats_m$IDitem2),    # vector of question rank2 IDs
  y = dr_mats_m$y               # vector of responses
)


start <- list(
  z = rep(0, M),
  sigma = 1,
  theta = 2
)



##################### m1 non-centered random effects

set.seed(1)
mr2 <- stan( file=model_file[1],
              data=dat2,
              iter=samps,
              chains=num_chains, 
              init=rep(list(start), num_chains),
              control=list(adapt_delta=0.99, max_treedepth=10) 
            )

saveRDS(mr2, "mr2_fit.rds") # save stanfit output 

mr2 <- readRDS("mr2_fit.rds") #to read in already-fit stanfit output


precis(mr2, 2)

plot(precis(mr2, 2))

post_rmam <- extract.samples( mr2 )  # posterior distribution for rankings of matsigenkas for mnp






