package(readr)
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

class(data01)
dim(data01)

# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
sum(patient_1)

patient_2 <- data01[2,7]
min(patient_2)

mean(as.numeric(data01[1, ]))

max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)


min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)

