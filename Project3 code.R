Data <- read.csv("/Users/aidandowd/desktop/FALL 2022/Stat 3080/Absolute Final Stat3080 Data.csv")


Air.corr <- cor(Data$Air.Yards, Data$Actual.PPR.Points)
Catch.corr <- cor(Data$Catches.Over.Expected, Data$Actual.PPR.Points)
Targets.corr <- cor(Data$Targets, Data$Actual.PPR.Points)

# Do recievers with a positive catch rate over expected perform better in fantasy?

H0: mu_positive - mu_negative = 0
HA: mu_positive - mu_negative > 0 

# test: 
hist()
Positive <- Data[which(Data$Catch.Rate.OverExpected > 0 & Data$Actual.PPR.Points < 112),]
Negative <- Data[which(Data$Catch.Rate.OverExpected < 0),]

t.test(Positive$Actual.PPR.Points, Negative$Actual.PPR.Points, mu=0, alternative="greater")

hist(Positive$Actual.PPR.Points)
hist(Negative$Actual.PPR.Points)


nrow(Positive)

quantile(Positive$Actual.PPR.Points)
quantile(Negative$Actual.PPR.Points)
