
########################### Formating data matsigenka for themselves


#Read the data from the csv data file into R:
RankMatsSelf_raw <- read.csv(file="./Data/ranking_mats_self.csv", header=TRUE)  


r_mats_s <- RankMatsSelf_raw   # matrix of rankings made by matsigenka for themselves        

sets <- t(combn( names(r_mats_s[,4:ncol(r_mats_s)]) , 2 )) # all pairs of items

K <- nrow(sets)

items <- unique(colnames(r_mats_s[,4:ncol(r_mats_s)]))  # items to compare

ID <- rep(r_mats_s$ID,each=K)
sex <- rep(r_mats_s$sex,each=K)
age <- rep(r_mats_s$age,each=K)


dr_mats_s <- data.frame( ID=ID, sex=sex, age=age, item1=as.factor(sets[,1]) , item2=as.factor(sets[,2]) )

dr_mats_s$rank1 <- NA
dr_mats_s$rank2 <- NA

#### adding ranking numbers of species in item1 and item2

#for item1
for ( i in 1:dim(dr_mats_s)[1] ) {
	for ( j in 1:dim(r_mats_s)[1] ) {
		for ( k in 4:dim(r_mats_s)[2]) {
			if (dr_mats_s$ID[i]==r_mats_s$ID[j] && dr_mats_s$item1[i] == names(r_mats_s)[k]) {
					dr_mats_s$rank1[i] <- r_mats_s[j,k]
			}#if
		}#k
	}#j
}#i

#for item2
for ( i in 1:dim(dr_mats_s)[1] ) {
	for ( j in 1:dim(r_mats_s)[1] ) {
		for ( k in 5:dim(r_mats_s)[2]) {
			if (dr_mats_s$ID[i]==r_mats_s$ID[j] && dr_mats_s$item2[i] == names(r_mats_s)[k]) {
					dr_mats_s$rank2[i] <- r_mats_s[j,k]
			}#if
		}#k
	}#j
}#i

# y = indicator that item1 was chosen

y <- ifelse(dr_mats_s$rank1 > dr_mats_s$rank2, 2, ifelse( dr_mats_s$rank1 < dr_mats_s$rank2, 1, 0))

dr_mats_s$y <- y

#adding IDs to items
dr_mats_s[,"IDitem1"] <- NA
dr_mats_s[,"IDitem2"] <- NA

for (i in 1:length(items)) {
	dr_mats_s[which(dr_mats_s$item1 == items[i]), "IDitem1"] <- i
}

for (i in 1:length(items)) {
	dr_mats_s[which(dr_mats_s$item2 == items[i]), "IDitem2"] <- i
}


# dropping NA cases

dr_mats_s <- dr_mats_s[which(is.na(dr_mats_s$y)==FALSE),]




########################### Formating data matsigenka for mnp


#Read the data from the csv data file into R:
RankMatsMNP_raw <- read.csv(file="./Data/ranking_mats_mnp.csv", header=TRUE)  


r_mats_m <- RankMatsMNP_raw   # matrix of rankings made by matsigenka for mnp        

sets <- t(combn( names(r_mats_m[,4:ncol(r_mats_m)]) , 2 )) # all pairs of items

K <- nrow(sets)

items <- unique(colnames(r_mats_m[,4:ncol(r_mats_m)]))  # items to compare

ID <- rep(r_mats_m$ID,each=K)
sex <- rep(r_mats_m$sex,each=K)
age <- rep(r_mats_m$age,each=K)


dr_mats_m <- data.frame( ID=ID, sex=sex, age=age, item1=as.factor(sets[,1]) , item2=as.factor(sets[,2]) )

dr_mats_m$rank1 <- NA
dr_mats_m$rank2 <- NA

#### adding ranking numbers of species in item1 and item2

#for item1
for ( i in 1:dim(dr_mats_m)[1] ) {
	for ( j in 1:dim(r_mats_m)[1] ) {
		for ( k in 4:dim(r_mats_m)[2]) {
			if (dr_mats_m$ID[i]==r_mats_m$ID[j] && dr_mats_m$item1[i] == names(r_mats_m)[k]) {
					dr_mats_m$rank1[i] <- r_mats_m[j,k]
			}#if
		}#k
	}#j
}#i

#for item2
for ( i in 1:dim(dr_mats_m)[1] ) {
	for ( j in 1:dim(r_mats_m)[1] ) {
		for ( k in 5:dim(r_mats_m)[2]) {
			if (dr_mats_m$ID[i]==r_mats_m$ID[j] && dr_mats_m$item2[i] == names(r_mats_m)[k]) {
					dr_mats_m$rank2[i] <- r_mats_m[j,k]
			}#if
		}#k
	}#j
}#i

# y = indicator that item1 was chosen

y <- ifelse(dr_mats_m$rank1 > dr_mats_m$rank2, 2, ifelse( dr_mats_m$rank1 < dr_mats_m$rank2, 1, 0))

dr_mats_m$y <- y

#adding IDs to items
dr_mats_m[,"IDitem1"] <- NA
dr_mats_m[,"IDitem2"] <- NA

for (i in 1:length(items)) {
	dr_mats_m[which(dr_mats_m$item1 == items[i]), "IDitem1"] <- i
}

for (i in 1:length(items)) {
	dr_mats_m[which(dr_mats_m$item2 == items[i]), "IDitem2"] <- i
}


# dropping NA cases

dr_mats_m <- dr_mats_m[which(is.na(dr_mats_m$y)==FALSE),]




########################### Formating data mnp for themselves


#Read the data from the csv data file into R:
RankMnpSelf_raw <- read.csv(file="./Data/ranking_mnp_self.csv", header=TRUE)  


r_mnp_s <- RankMnpSelf_raw   # matrix of rankings made by mnp for themselves        

sets <- t(combn( names(r_mnp_s[,4:ncol(r_mnp_s)]) , 2 )) # all pairs of items

K <- nrow(sets)

items <- unique(colnames(r_mnp_s[,4:ncol(r_mnp_s)]))  # items to compare

ID <- rep(r_mnp_s$ID,each=K)
sex <- rep(r_mnp_s$sex,each=K)
age <- rep(r_mnp_s$age,each=K)


dr_mnp_s <- data.frame( ID=ID, sex=sex, age=age, item1=as.factor(sets[,1]) , item2=as.factor(sets[,2]) )

dr_mnp_s$rank1 <- NA
dr_mnp_s$rank2 <- NA

#### adding ranking numbers of species in item1 and item2

#for item1
for ( i in 1:dim(dr_mnp_s)[1] ) {
	for ( j in 1:dim(r_mnp_s)[1] ) {
		for ( k in 4:dim(r_mnp_s)[2]) {
			if (dr_mnp_s$ID[i]==r_mnp_s$ID[j] && dr_mnp_s$item1[i] == names(r_mnp_s)[k]) {
					dr_mnp_s$rank1[i] <- r_mnp_s[j,k]
			}#if
		}#k
	}#j
}#i

#for item2
for ( i in 1:dim(dr_mnp_s)[1] ) {
	for ( j in 1:dim(r_mnp_s)[1] ) {
		for ( k in 5:dim(r_mnp_s)[2]) {
			if (dr_mnp_s$ID[i]==r_mnp_s$ID[j] && dr_mnp_s$item2[i] == names(r_mnp_s)[k]) {
					dr_mnp_s$rank2[i] <- r_mnp_s[j,k]
			}#if
		}#k
	}#j
}#i

# y = indicator that item1 was chosen

y <- ifelse(dr_mnp_s$rank1 > dr_mnp_s$rank2, 2, ifelse( dr_mnp_s$rank1 < dr_mnp_s$rank2, 1, 0))

dr_mnp_s$y <- y

#adding IDs to items
dr_mnp_s[,"IDitem1"] <- NA
dr_mnp_s[,"IDitem2"] <- NA

for (i in 1:length(items)) {
	dr_mnp_s[which(dr_mnp_s$item1 == items[i]), "IDitem1"] <- i
}

for (i in 1:length(items)) {
	dr_mnp_s[which(dr_mnp_s$item2 == items[i]), "IDitem2"] <- i
}


# dropping NA cases

dr_mnp_s <- dr_mnp_s[which(is.na(dr_mnp_s$y)==FALSE),]




########################### Formating data mnp for mantsigenka


#Read the data from the csv data file into R:
RankMnpMats_raw <- read.csv(file="./Data/ranking_mnp_mats.csv", header=TRUE) 


r_mnp_m <- RankMnpMats_raw   # matrix of rankings made by mnp for matsigenka       

sets <- t(combn( names(r_mnp_m[,4:ncol(r_mnp_m)]) , 2 )) # all pairs of items

K <- nrow(sets)

items <- unique(colnames(r_mnp_m[,4:ncol(r_mnp_m)]))  # items to compare

ID <- rep(r_mnp_m$ID,each=K)
sex <- rep(r_mnp_m$sex,each=K)
age <- rep(r_mnp_m$age,each=K)


dr_mnp_m <- data.frame( ID=ID, sex=sex, age=age, item1=as.factor(sets[,1]) , item2=as.factor(sets[,2]) )

dr_mnp_m$rank1 <- NA
dr_mnp_m$rank2 <- NA

#### adding ranking numbers of species in item1 and item2

#for item1
for ( i in 1:dim(dr_mnp_m)[1] ) {
	for ( j in 1:dim(r_mnp_m)[1] ) {
		for ( k in 4:dim(r_mnp_m)[2]) {
			if (dr_mnp_m$ID[i]==r_mnp_m$ID[j] && dr_mnp_m$item1[i] == names(r_mnp_m)[k]) {
					dr_mnp_m$rank1[i] <- r_mnp_m[j,k]
			}#if
		}#k
	}#j
}#i

#for item2
for ( i in 1:dim(dr_mnp_m)[1] ) {
	for ( j in 1:dim(r_mnp_m)[1] ) {
		for ( k in 5:dim(r_mnp_m)[2]) {
			if (dr_mnp_m$ID[i]==r_mnp_m$ID[j] && dr_mnp_m$item2[i] == names(r_mnp_m)[k]) {
					dr_mnp_m$rank2[i] <- r_mnp_m[j,k]
			}#if
		}#k
	}#j
}#i

# y = indicator that item1 was chosen

y <- ifelse(dr_mnp_m$rank1 > dr_mnp_m$rank2, 2, ifelse( dr_mnp_m$rank1 < dr_mnp_m$rank2, 1, 0))

dr_mnp_m$y <- y

#adding IDs to items
dr_mnp_m[,"IDitem1"] <- NA
dr_mnp_m[,"IDitem2"] <- NA

for (i in 1:length(items)) {
	dr_mnp_m[which(dr_mnp_m$item1 == items[i]), "IDitem1"] <- i
}

for (i in 1:length(items)) {
	dr_mnp_m[which(dr_mnp_m$item2 == items[i]), "IDitem2"] <- i
}


# dropping NA cases

dr_mnp_m <- dr_mnp_m[which(is.na(dr_mnp_m$y)==FALSE),]



