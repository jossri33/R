library(dplyr)

attach(Data_G)
head(Data_G)

Gantries<-c(unique(Data_G$Plaza_Id))
Gantries

for (Gnumber in Gantries){
Plaza<-filter(Data_G,Plaza_Id==Gnumber)
Filename<-paste(Gnumber,".csv",sep="")
write.csv(Plaza,Filename, col.names=TRUE)
}