library(stringr) 

data <- read.csv("C:\\Users\\yyyja\\Downloads\\Statcap.csv")

Concern.Level <- c()

for (i in 1:200){
  if(str_detect(data$AI.OUTPUT[i], "Little concern")){
    Concern.Level[i] <- "Little concern"
    
  } else if(str_detect(data$AI.OUTPUT[i], "Moderately concerning")){
    Concern.Level[i] <- "Moderately concerning"
    
  } else {
    Concern.Level[i] <- "Highly concerning"
  }
}

data$Concern.Level <- Concern.Level

# get symptoms
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "headache")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Headache <- col

#Fatigue
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "fatigue")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Fatigue <- col

#Fever
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "fever")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Fever <- col

#Nausea
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "nausea")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Nausea <- col

#Muscle pain
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "muscle pain")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Muscle.Pain <- col

#Cough
col <- c()

for (i in 1:200){
  if(str_detect(data$Symptoms[i], "cough")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Cough <- col

# get all treatments
#rest 
col <- c()

for (i in 1:200){
  if(str_detect(data$AI.OUTPUT[i], "rest")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Treat.Rest <- col

#add testing
col <- c()

for (i in 1:200){
  if(str_detect(data$AI.OUTPUT[i], "testing")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Treat.Testing <- col

#Painkillers
col <- c()

for (i in 1:200){
  if(str_detect(data$AI.OUTPUT[i], "painkiller")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Treat.Painkillers <- col

#Urgentcare
col <- c()

for (i in 1:200){
  if(str_detect(data$AI.OUTPUT[i], "rgent care")){
    col[i] <- 1
    
  } else {
    col[i] <- 0
  }
}

data$Treat.UrgCare <- col

#column for num rec treatments
data$Num.Treatments <- data$Treat.UrgCare + data$Treat.Rest + 
  data$Treat.Painkillers + data$Treat.Testing 
