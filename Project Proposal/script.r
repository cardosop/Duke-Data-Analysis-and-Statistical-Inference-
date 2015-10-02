load(url("http://bit.ly/dasi_gss_data"))

data<-gss[,c("polviews","race")]
data <- subset(data, polviews != "NA")

n1<-length(data$polviews)
n2<-length(data$race)

bp1 < - round(table(data$polviews)*100/n1,2)
barplot(bp1, ylim=c(0,100), main="Political Views in %", col=rainbow(7))

bp2<-round(table(data$race)*100/n2,2)
barplot(bp2, ylim=c(0,100), main="Race in %", col=rainbow(3))

barplot(table(data$race, data$polviews), main="Social Class in function of Race", col=rainbow(3), legend = TRUE)

mosaicplot(table(data$polviews, data$race), main="Social Class according to Race", col=rainbow(3), cex.axis=1)

write.csv(data, file = "data.csv")