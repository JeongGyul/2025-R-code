# 단원 2, 1-3절
rm(list=ls())

max(4, 6, 2)
factorial(5)
a <- 125
a
print(a)

log(10)+5
sqrt(25)
abs(-10)

v.1 = "V"

# source("C:/[2025-R]/2025-code/ch02-sect1.R", echo=TRUE)
# source("ch02-sect1.R", echo=TRUE)
# source("ch02-sect1.R")

d <-  c(1, 4, 3, 7, 8)
d
2*d
d-5
3*d + 4

x <- c(1, 2, 3)
x
y <- c(4, 5, 6)
y
x + y
x * y
z <- x + y
z

x <- c(1, 2, 3, 1)
x
y <- c(4, 5, 6)
y

x+y

mean(x)
mean(c(1, 2, 3))
1:5
x

x <- c(1, 2, 3)
y <- c("a", "b", "c")
z <- c(TRUE, FALSE, FALSE, TRUE)
x
y
z

w <- c(1, 2, 3, "a", "b", "c")
w

p <- c(1, 2, TRUE, FALSE, FALSE, TRUE)
p

q <- c("1", "2", TRUE, FALSE, FALSE, TRUE)
q

v1 <- 50:90
v1

v2 <- c(1,2,5, 50:90)
v2

v3 <- seq(1, 101, 3)
v3

v4 <- seq(0.1, 1.0, 0.1)
v4

rep(1, times=5)
rep(1:5, times=3)
rep(c(1, 5, 9), times=3)

?rep

rep(1:4, 2)
rep(1:4, each = 2)       # not the same.
rep(1:4, c(2,2,2,2))     # same as second.
rep(1:4, c(2,1,2,1))
rep(1:4, each = 2, length.out = 4)    # first 4 only.



score <- c(90, 85, 70)
score
names(score)
names(score) <- c("John", "Tom", "Jane")
names(score)
score

score[1]
score[2]
score[3]
score["John"]
score["Tom"]
score["Jane"]

d <- c(1, 4, 3, 7, 8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

d <- c(1, 4, 3, 7, 8)
d[c(1, 3, 5)]
d[1:3]
d[seq(1, 5, 2)]
d[-2]
d[-c(3:5)]

GNP <- c(2090, 2450, 960)
GNP
names(GNP) <- c("Korea", "Japan", "Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea", "Nepal")]
GNP[c("Nepal", "Korea", "Nepal")]

v1 <- c(1, 5, 7, 8, 9)
v1
v1[2] <- 3
v1
v1[c(1, 5)] <- c(10, 20)
v1
