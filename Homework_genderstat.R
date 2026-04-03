gender_stat <- read_csv('/Users/linbot/Desktop/12_MIT/14310x_Data Analysis for Social Scientist/Module 3/Homework/Gender_StatsData.csv')
head(gender_stat)
dim(gender_stat)
view(gender_stat)
summary(gender_stat)
summary(gender_stat$Indicator.Code)

#Preliminaries
rm(list=ls())
library("utils")
library("tidyverse")
setwd ("/Users/linbot/Desktop/12_MIT/14310x_Data Analysis for Social Scientist/Module 3/Homework")

#Getting the data
gender_data <- as_tibble(read.csv('/Users/linbot/Desktop/12_MIT/14310x_Data Analysis for Social Scientist/Module 3/Homework/Gender_StatsData.csv'))

teenager_fr <-   filter (gender_data, Indicator.Code == "SP.ADO.TFRT")

teenager_fr

mean(teenager_fr$X1975, na.rm = TRUE)
rm(gender_data)

mean_1960 <- mean(teenager_fr$X1960, na.rm = TRUE)
sd_1960   <- sd(teenager_fr$X1960, na.rm = TRUE)

mean_1960
sd_1960

mean_2000 <- mean(teenager_fr$X2000, na.rm = TRUE)
sd_2000   <- sd(teenager_fr$X2000, na.rm = TRUE)

mean_2000
sd_2000

byincomelevel <- filter(teenager_fr,Country.Code%in%c("LIC","MIC","HIC", "WLD"))
byincomelevel

plotdata_bygroupyear <- gather(byincomelevel, Year, FertilityRate, X1960:X2017) %>%
  select(Year, Country.Name, Country.Code, FertilityRate)

plotdata_bygroupyear
head(plotdata_bygroupyear)

plotdata_byyear <- select(plotdata_bygroupyear, Country.Code, Year, FertilityRate) %>%
  spread(Country.Code, FertilityRate)
plotdata_byyear

ggplot(plotdata_bygroupyear, aes(x = Year, y = FertilityRate, group = Country.Code)) +
  geom_line()

ggplot(plotdata_bygroupyear,
       aes(x = Year, y = FertilityRate, group = Country.Code, color = Country.Code)) +
  geom_line()

ggplot(plotdata_bygroupyear, aes(x = Year, y = FertilityRate, group = Country.Code)) +
  geom_line() +
  labs(title = "Fertility Rate by Country-Income-Level over Time")

plotdata_bygroupyear <- mutate(plotdata_bygroupyear,
                               Year = as.numeric(str_replace(Year, "X", "")))

ggplot(plotdata_bygroupyear,
       aes(x = Year, y = FertilityRate,
           group = Country.Code, color = Country.Code)) +
  geom_line() +
  scale_x_discrete(labels = function(x) sub("^X","", x))


#Generating histdata_twoyears
histdata_twoyears <- select(teenager_fr, Country.Name, Country.Code, Indicator.Name, Indicator.Code, X1960,X2000)
histdata_twoyears

histdata_twoyears <- gather(teenager_fr, Year, FertilityRate, X1960, X2000) %>%
  select(Year, Country.Name, Country.Code, FertilityRate)

histdata_twoyears <- filter(histdata_twoyears,!is.na(FertilityRate))

ggplot(histdata_twoyears, aes(x=FertilityRate)) + 
  geom_histogram(data=subset(histdata_twoyears, Year=="X1960"), 
                 color="darkred", fill="red", alpha=0.2) + 
  geom_histogram(data=subset(histdata_twoyears, Year=="X2000"), 
                 color="darkblue", fill="blue", alpha=0.2) 
ggsave("hist.png")

#Question 20
ggplot(histdata_twoyears, aes(x=FertilityRate, group=Year, color=Year, alpha=0.2)) +
  geom_histogram(aes(y=..density..)) +
  geom_density(data=subset(histdata_twoyears, Year=="X1960"), color="darkred", fill="red", alpha=0.2, bw=5)+ 
  geom_density(data=subset(histdata_twoyears, Year=="X2000"), color="darkblue", fill="blue", alpha=0.2, bw=5)

#Preliminaries
#---------------------------------------
rm(list=ls())
library("utils")
install.packages('plot3D')
library(plot3D)
setwd()

#Creating the vector x and y
M <- mesh(seq(0,1,length=100), seq(0,1,length=100))
x<-M$x
y<-M$y
z<-6/5*(M$x+M$y^2)

#Plotting this pdf
persp3D(x, y, z, xlab='X variable', ylab= 'Y variable', xlim = c(0,1), main= "Plotting joint pdf")

x <- seq(0,1,length.out=100)
y <- seq(0,1,length.out=100)
z <- outer(x,y,function(x,y) 6/5*(x + y^2))
persp(x, y, z, theta=40, phi=20, xlab="X", ylab="Y", zlab="f(x,y)")


#Preliminaries
#---------------------------------------
rm(list=ls())
library("utils")
#install.packages('plot3D')
library(plot3D)
setwd()

#Calculating cdf
x <- seq(0, 1, length=1000)
y <- seq(0, 1, length=1000)
cdfy <- 6/5 * (1/2*y+y^3/3)
cdfx <- 6/5*(1/3*x+x^2/2)

#Plotting cdf
pdf("cumulative.pdf")
plot(x, cdfx, type = "l", col="blue", xlab=" ", ylab = "Cumulative Probability", xlim=c(0,1), main="CDF plot")
lines(y, cdfy, lty=2, col="red", lwd=2)
legend("bottomright", ncol=1, legend = c("X", "Y"), lty=c(1,2), col=c("blue", "red"))
dev.off