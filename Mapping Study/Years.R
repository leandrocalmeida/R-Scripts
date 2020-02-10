# Mapping Data
Mymapping <- read.csv(file.choose())

YearsMymapping <- Mymapping[ , c('Year.of.publication')] 
hist(YearsMymapping, main = "Publications over the years", xlab = "Years", ylab = "Density", xlim=c(2000,2020), ylim=c(0,0.7), prob=T, cex.axis=1.5, cex.main=2, cex.lab=1.5, cex.sub=1.5)
box(bty="l")

#NFV Data
NFVIEEE <- read.csv(file.choose())
NFVACM <- read.csv(file.choose())
NFVElsevier <- read.csv(file.choose())
NFVSpringer <- read.csv(file.choose())
YearsNFVIEEE <- NFVIEEE[ , c('Publication_Year')]
YearsNFVACM <- NFVACM[ , c('year')]
YearsNFVElsevier <- unlist(c(NFVElsevier))
YearsNFVSpringer <- unlist(c(NFVSpringer))
YearsNFV <- c(YearsNFVIEEE, YearsNFVACM,YearsNFVElsevier,YearsNFVSpringer)
lines(density(YearsNFV[YearsNFV < 2020],na.rm=T), col="red", lwd=2)
legend("topleft",legend="NFV", cex=2, lty=1, col="red", lwd=2, bty="n")

#SDN Data
SDNIEEE <- read.csv(file.choose())
SDNACM <- read.csv(file.choose())
SDNElsevier <- read.csv(file.choose())
SDNSpringer <- read.csv(file.choose())
YearsSDNIEEE <- SDNIEEE[ , c('Publication_Year')]
YearsSDNACM <- SDNACM[ , c('year')]
YearsSDNElsevier <- unlist(c(SDNElsevier))
YearsSDNSpringer <- SDNSpringer[ , c('Publication.Year')]
YearsSDN <- c(YearsSDNIEEE, YearsSDNACM,YearsSDNElsevier,YearsSDNSpringer)
lines(density(YearsSDN[YearsSDN < 2020],na.rm=T), col="blue", lwd=2)
legend("topleft",legend="SDN", cex=2, lty=1, col="blue", lwd=2, bty="n")

#Cloud Data
CloudIEEE <- read.csv(file.choose())
CloudACM <- read.csv(file.choose())
CloudElsevier <- read.csv(file.choose())
CloudSpringer <- read.csv(file.choose())
YearsCloudIEEE <- CloudIEEE[ , c('Publication_Year')]
YearsCloudIEEE <- YearsCloudIEEE[-141]
YearsCloudACM <- CloudACM[ , c('year')]
YearsCloudElsevier <- unlist(c(CloudElsevier))
YearsCloudSpringer <- CloudSpringer[ , c('Publication.Year')]
YearsCloud <- c(YearsCloudIEEE,YearsCloudACM, YearsCloudElsevier, YearsCloudSpringer)
lines(density(YearsCloud,na.rm=T), col="green", lwd=2)
legend("topleft", legend="Cloud Computing", cex=2, lty=1, col="green", lwd=2, bty="n")


#Virtualization Data
VirtIEEE <- read.csv(file.choose())
VirtACM <- read.csv(file.choose())
VirtElsevier <- read.csv(file.choose())
VirtSpringer <- read.csv(file.choose())
YearsVirtIEEE <- VirtIEEE[ , c('Publication_Year')]
YearsVirtACM <- VirtACM[ , c('year')]
YearsVirtElsevier <- unlist(c(VirtElsevier))
YearsVirtSpringer <- VirtSpringer[ , c('Publication.Year')]
YearsVirt <- c(YearsVirtIEEE, YearsVirtACM,YearsVirtElsevier,YearsVirtSpringer)
lines(density(YearsVirt[YearsVirt < 2020],na.rm=T), col="orange", lwd=2)
legend("topleft", legend="Virtualization", cex=2, lty=1, col="orange", lwd=2, bty="n")


#DTN Data
DTNIEEE <- read.csv(file.choose())
DTNACM <- read.csv(file.choose())
DTNElsevier <- read.csv(file.choose())
DTNSpringer <- read.csv(file.choose())
YearsDTNIEEE <- DTNIEEE[ , c('Publication_Year')]
YearsDTNACM <- DTNACM[ , c('year')]
YearsDTNElsevier <- unlist(c(DTNElsevier))
YearsDTNSpringer <- DTNSpringer[ , c('Publication.Year')]
YearsDTN <- c(YearsDTNIEEE, YearsDTNACM,YearsDTNElsevier,YearsDTNSpringer)
lines(density(YearsDTN[YearsDTN < 2020],na.rm=T), col="purple", lwd=2)
legend("topleft", legend="DTN", cex = 2, lty=1, col="purple", lwd=2, bty="n")

#Grid Data
GridIEEE <- read.csv(file.choose())
GridACM <- read.csv(file.choose())
GridElsevier <- read.csv(file.choose())
GridSpringer <- read.csv(file.choose())
YearsGridIEEE <- GridIEEE[ , c('Publication_Year')]
YearsGridACM <- GridACM[ , c('year')]
YearsGridElsevier <- unlist(c(GridElsevier))
YearsGridSpringer <- GridSpringer[ , c('Publication.Year')]
YearsGrid <- c(YearsGridIEEE, YearsGridACM,YearsGridElsevier,YearsGridSpringer)
lines(density(YearsGrid[YearsGrid < 2020],na.rm=T), col="brown", lwd=2)
legend("topleft", legend="Grid Computing", cex=2, lty=1, col="brown", lwd=2, bty="n")

#P2P Data
P2PIEEE <- read.csv(file.choose())
P2PACM <- read.csv(file.choose())
P2PElsevier <- read.csv(file.choose())
P2PSpringer <- read.csv(file.choose())
YearsP2PIEEE <- P2PIEEE[ , c('Publication_Year')]
YearsP2PACM <- P2PACM[ , c('year')]
YearsP2PElsevier <- unlist(c(P2PElsevier))
YearsP2PSpringer <- P2PSpringer[ , c('Publication.Year')]
YearsP2P <- c(YearsP2PIEEE, YearsP2PACM,YearsP2PElsevier,YearsP2PSpringer)
lines(density(YearsP2P[YearsP2P < 2020],na.rm=T), col="cyan", lwd=2)
legend("topleft", legend="Peer-to-Peer", cex=2, lty=1, col="cyan", lwd=2, bty="n")
