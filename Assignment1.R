
## Assignment sheet 1 ##
## Author: Anthea Yichen Li
## Date: January 22, 2018

## Basic R exercise 1##
#a
(1:20)
#b
c(20:1)
#c
c(1:20,19:1)
#d
tmp <- c(4,6,3)
#e
c(rep(tmp, 10))
#f
c(rep(tmp, 10), 4)
#g
c(rep(tmp[1], 10), rep(tmp[2], 20), rep(tmp[3], 30))

x <- c(seq(3,6,by = 0.1))
## question 2 ## 
c(exp(x)*cos(x))
## question 3 ##
# a
a<-c(seq(3,36,by=3))
b<-c(seq(1,34,by=3))
c((0.1^a)*(0.2^b))
#b
c<-c(1:25)
c((2^c)/c)
## question 4 ##
# a
d<-c(10:100)
sum(c(d^3+4*d^2))
# b
sum(c(((2^c)/c)+(3^c)/(c^2)))

## question 5 ##
# a
c(paste(rep("label ", 30), 1:30))
# b
c(paste("fn", 1:30, sep = ""))
## question 6 ##
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
xi<-c(1:249)
yi<-c(2:250)
# a
c(yVec[yi]-xVec[xi])
# b
c(sin(yVec[xi])/cos(xVec[yi]))
# c
xii<-c(1:248)
yii<-c(2:249)
zii<-c(3:250)
c(xVec[xii]+2*xVec[yii]-xVec[zii])
# d
sum(c((exp(-xVec[xi+1]))/xVec[xi]+10))

## question 7 ##
# a
c(yVec[yVec>600])
# b
(1:length(yVec))[yVec>600]
# c 
xVec[yVec>600]
# d
sqrt(abs(xVec-mean(xVec)))
# -- Or -- 
# xbar=mean(xVec)
# func <- function(x) (abs(x-xbar))^(1/2)
# lapply(xVec, func)

# e 
sum(yVec > max(yVec) - 200)
# --or -- length(yVec[yVec>200])
# f
length(xVec[xVec%%2==0])
# g
xVec[order(yVec)]
# h
yind<-seq(1,250,by=3)
c(yVec[yind])
## question 8
1+sum(cumprod((seq(2,38,b=2)/seq(3,39,b=2))))
