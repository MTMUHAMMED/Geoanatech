###### LOADING PACKAGES #####
library(tidyverse)
###########################################
##### CHAPTER 4: PROGRAMMING BASIC  #######
############################################
a <- 0
if (a!=0){
  print(1/a)
} else{
  print("No Reciprocal for 0")
}
#### US Murder Rate Example
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000

ind <-which.min(murder_rate)
if(murder_rate[ind]<0.5){
  print(murders$state[ind])
}else{
  print("No state has murder rate that low")
}

#If we try it again with a rate of 0.25,
#we get a different answer:
if(murder_rate[ind]<0.25){
  print(murders$state[ind])
}else{
  print("No state has a murder rate that low.")
}
#### ifese statement #####
a <- 0
ifelse(a>0,1/a, NA)

b<-c(0,1,2,-4,5)
result<-ifelse(b>0,1/b,NA)
result

data(na_example)  # This data has a lot of NA
na_example
no_nas<-ifelse(is.na(na_example),0,na_example)
# That is all NA becomes zeros
no_nas
sum(is.na(no_nas))   # Sum all NA in no_nas
### The above can be well explained using this
na_e.g <- c(1,2,NA, 4, 5, NA, NA)
no_na_e.g <- ifelse(is.na(na_e.g),0,na_e.g)
no_na_e.g

#### Function "any" and "all": any returns T if any of the 
#### elements is T while all returns T if all elements are T
z <- c(T,T,F,T,T,F)
any(z)
all(z)

