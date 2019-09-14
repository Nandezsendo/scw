#read the data into R

mydataFull <- read.table("gapminder.txt", header = TRUE)

#select data of Canada

Canada<- mydataFull[mydataFull$country=="Canada",]

#plot lif exp
png("Canada.png") #opening a png device to write plot to
plot(Canada$year, Canada$lifeExp, type= "l", col="blue")

dev.off() #closes the device
