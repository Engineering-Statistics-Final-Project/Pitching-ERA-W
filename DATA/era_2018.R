library(readr)
source_data_2019 <- read.table("DATA/2019.txt")
source_data_2018 <- read.table("DATA/2018.txt")

era_2018 <- vector()
wins_2018 <- vector()

for (i in c(1:30)){
    wins_2018 <- c(wins_2018,source_data_2018[i,2])    
    era_2018  <- c(era_2018,source_data_2018[i,4])
}

png(file = "PICTURE/2018.png")
plot(era_2018, wins_2018,
     main="W-ERA 2018",
     ylab = "W",
     xlab = "ERA"
     )
dev.off()
