
######################## Ordered Density Plots for Rankings

################# Matsigenka for themselves

#plot logistic response functions for a given question and latent trait estimates of indivs

post_rmas <- extract.samples( mr1 )  # posterior distribution for rankings of matsigenka for themselves

list_rmas <- split(post_rmas$z, col(post_rmas$z))

names(list_rmas) <- items

list_rmas <- list_rmas[order(sapply(list_rmas, mean))] #order list by mean location for plotting


# density plot of responses
pdf(file="./Plots_00/Rankings_Matsigenka_self.pdf", 
height=6, width=6)
par(mar = c(0, 0, 0, 0), oma = c(4, 8, 4, 4)) 


denschart3( list_rmas,
      #labels=rev(quest_names)
      labels="",
      adjust=1,
      color=rgb(0.16,0.68,0.16,alpha=0.4),
          colorHPDI=rgb(0.16,0.68,0.16,alpha=0.4),
          HPDI=0.9,
          border=NA, yaxt="n",
          cex=0.8, height=0.7,
          xlim=range( -4, 3)
 )
axis(side=2,
  col="white",
  at=c(1:M), 
  labels=names(list_rmas), las=1, cex.axis=0.7) #left
axis(side=1, at=-4:3, labels=-4:3, cex.axis=0.7)
#lines(x=list( x=c(0,0), y=c(0,82.5) ), lty=2, lwd=0.75)

mtext("Rankings Matsigenka for Themselves", side = 1, outer = TRUE, cex = 0.8, line = 2.2)

graphics.off()




################# Matsigenka for MNP

#plot logistic response functions for a given question and latent trait estimates of indivs

post_rmam <- extract.samples( mr2 )  # posterior distribution for rankings of matsigenka for MNP

list_rmam <- split(post_rmam$z, col(post_rmam$z))

names(list_rmam) <- items

list_rmam <- list_rmam[order(sapply(list_rmam, mean))] #order list by mean location for plotting


# density plot of responses
pdf(file="./Plots_00/Rankings_Matsigenka_MPN.pdf", 
height=12, width=6)
par(mar = c(0, 0, 0, 0), oma = c(4, 8, 4, 4)) 


denschart3( list_rmam,
      #labels=rev(quest_names)
      labels="",
      adjust=1,
      color="black",
          colorHPDI=grey(0.45),
          HPDI=0.9,
          border=NA, yaxt="n",
          cex=0.8, height=0.7,
          xlim=range( -4, 3)
 )
axis(side=2,
  col="white",
  at=c(1:M), 
  labels=names(list_rmam), las=1, cex.axis=0.7) #left
axis(side=1, at=-4:3, labels=-4:3, cex.axis=0.7)
#lines(x=list( x=c(0,0), y=c(0,82.5) ), lty=2, lwd=0.75)

mtext("Rankings Matsigenka for MNP", side = 1, outer = TRUE, cex = 0.7, line = 2.2)

graphics.off()



################# MNP for themselves

#plot logistic response functions for a given question and latent trait estimates of indivs

post_rmns <- extract.samples( mr4 )  # posterior distribution for rankings of MNP for themselves

list_rmns <- split(post_rmns$z, col(post_rmns$z))

names(list_rmns) <- items

list_rmns <- list_rmns[order(sapply(list_rmns, mean))] #order list by mean location for plotting


# density plot of responses
pdf(file="./Plots_00/Rankings_MNP_self.pdf", 
height=6, width=6)
par(mar = c(0, 0, 0, 0), oma = c(4, 8, 4, 4)) 


denschart3( list_rmns,
      #labels=rev(quest_names)
      labels="",
      adjust=1,
      color=rgb(0.5,0,0.5,alpha=0.4),
          colorHPDI=rgb(0.5,0,0.5,alpha=0.2),
          HPDI=0.9,
          border=NA, yaxt="n",
          cex=0.8, height=0.7,
          xlim=range( -4, 3)
 )
axis(side=2,
  col="white",
  at=c(1:M), 
  labels=names(list_rmns), las=1, cex.axis=0.7) #left
axis(side=1, at=-4:3, labels=-4:3, cex.axis=0.7)
#lines(x=list( x=c(0,0), y=c(0,82.5) ), lty=2, lwd=0.75)

mtext("Rankings MNP for Themselves", side = 1, outer = TRUE, cex = 0.8, line = 2.2)

graphics.off()




################# MNP for Matsigenka

#plot logistic response functions for a given question and latent trait estimates of indivs

post_rmnm <- extract.samples( mr5 )  # posterior distribution for rankings of MNP for matsigenka

list_rmnm <- split(post_rmnm$z, col(post_rmnm$z))

names(list_rmnm) <- items

list_rmnm <- list_rmnm[order(sapply(list_rmnm, mean))] #order list by mean location for plotting


# density plot of responses
pdf(file="./Plots_00/Rankings_MNP_Matsigenka.pdf", 
height=12, width=6)
par(mar = c(0, 0, 0, 0), oma = c(4, 8, 4, 4))


denschart3( list_rmnm,
      #labels=rev(quest_names)
      labels="",
      adjust=1,
      color="black",
          colorHPDI=grey(0.45),
          HPDI=0.9,
          border=NA, yaxt="n",
          cex=0.8, height=0.7,
          xlim=range( -4, 3)
 )
axis(side=2,
  col="white",
  at=c(1:M), 
  labels=names(list_rmnm), las=1, cex.axis=0.7) #left
axis(side=1, at=-4:3, labels=-4:3, cex.axis=0.7)
#lines(x=list( x=c(0,0), y=c(0,82.5) ), lty=2, lwd=0.75)

mtext("Rankings MNP for Matsigenka", side = 1, outer = TRUE, cex = 0.7, line = 2.2)

graphics.off()



