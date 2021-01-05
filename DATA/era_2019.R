library(readr)
source_data_2019 <- read.table("DATA/2019.txt")
source_data_2018 <- read.table("DATA/2018.txt")

era_2019 <- vector()
wins_2019 <- vector()

for (i in c(1:30)){
    wins_2019 <- c(wins_2019,source_data_2019[i,2])    
    era_2019  <- c(era_2019,source_data_2019[i,4])
}

png(file = "PICTURE/2019.png")
plot(era_2019, wins_2019,
     main="W-ERA 2019",
     ylab = "W",
     xlab = "ERA"
     )
dev.off()