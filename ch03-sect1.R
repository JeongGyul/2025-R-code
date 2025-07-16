# 단원 03
rm(list=ls())

z <- matrix(1:20, nrow=4, ncol=5)
z

matrix(1:20, 4, 5)
matrix(1:20, 5)
matrix(1:20, ncol=5)
matrix(1:20, ncol=3)

z2 <- matrix(1:20, nrow=4, ncol=5, byrow=TRUE)
z2

matrix(1:20, nrow=6, ncol=5, byrow=TRUE)

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)
x
y
z

m1 <- cbind(x, y)
m1

m2 <- rbind(x, y)
m2

m3 <- rbind(m2, x)
m3

m4 <- cbind(z, y)
m4

m5 <- cbind(y, z)
m5


# code 3-4
z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,3]
z[1,4]
z[2,]
z[,4]

z[2][3] # NA
z[2]  # ?
z[6]  # ?


# code 3-5
z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,1:3]
z[1,c(1,2,4)]
z[1:2,]
z[,c(1,4)]

# code 3-6
score <- matrix(c(90, 85, 69, 78,
                  85, 96, 49, 95,
                  90, 80, 70, 60),
                  nrow=4, ncol=3)
score
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <-  c('English', 'Math', 'Science')
score

# code 3-7 
score['John', 'Math']
score['Tom', c('Math', 'Science')]
score['Mark',]
score[, 'English']
rownames(score)
colnames(score)
colnames(score)[2]

data = 10
data
data[1]



### 7/16 학습 정리
# 기본 자료형
a <- 10
a
# the internal structure of an a object
str(a)

b <- TRUE
b
str(b)

c <- "RStudio"
c
str(c)

d <- 3 - 5i
d
str(d)

# 자료 구조형
m1 <- c(1, 2, 3)
m1
str(m1)
class(m1)

m2 <- c(1, TRUE, 'apple')
m2
str(m2)
class(m2)

m3 <- matrix(1:20, 4, 5)
m3
str(m3)
class(m3)

m4 <- matrix(1:20, 4, 5, byrow=TRUE)
m4
str(m4)
class(m4)

a1 <- array(1:8, dim = c(2, 2, 2))
a1
str(a1)
class(a1)

a2 <- array(1:8, dim = c(4, 2))
a2
str(a2)
class(a2)

m5 <- matrix(1:8, 4, 2)
m5
str(m5)
class(m5)






