rm(list=ls())

# code 7-1
z <- c(1, 2, 3, NA, 5, NA, 8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=TRUE)


# code 7-2
z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z1

n = na.omit(z2)
str(n)
typeof(n)

z3 <- as.vector(na.omit(z2))
z3


# code 7-3
x <- iris
head(x)
x[1,2] <- NA
x[1,3] <- NA
x[2,3] <- NA
x[3,4] <- NA
head(x)

str(x)
summary(x)

is.na(x)
is.na(x[,1])
is.na(x[,2])


# code 7-4
# for문을 이용한 방법
for (i in 1:ncol(x)) {
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(this.na), "\n")
}

# apply를 이용한 방법
col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <- apply(x, 2, FUN=col_na)
na_count

# 익명함수 사용
na_count <- apply(x, 2, FUN = function(x) sum(is.na(x)))
na_count


# code 7-5
rowSums(is.na(x))
head(x)
sum(rowSums(is.na(x)) > 0)

sum(is.na(x))


# code 7-6
head(x)
x[complete.cases(x),]
x[!complete.cases(x),]
y <- x[complete.cases(x),]
head(y)

# airquality
airquality
head(airquality)
sum(rowSums(is.na(airquality)) > 0)
air <- airquality[!complete.cases(airquality), ]
air
nrow(air)
head(airquality[complete.cases(airquality),])


# code 7-7
st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)
boxplot.stats(st$Income)$out

# code 7-8
out.val <- boxplot.stats(st$Income)$out
out.val
# out.val이 벡터여도 처리 가능
st$Income[st$Income %in% out.val] <- NA
head(st)
newdata <- st[complete.cases(st),]
head(newdata)


boxplot.stats(st$Income)
boxplot.stats(st$Income)$stats
boxplot.stats(st$Income)$n
boxplot.stats(st$Income)$conf
boxplot.stats(st$Income)$out



# code 7-9
v1 <- c(1,7,6,8,4,2,3)
order(v1)
v1 <- sort(v1)
v1
v2 <- sort(v1, decreasing=T)
v2

# code 7-10
head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]
iris[order(iris$Sepal.Length, decreasing=T),]
iris.new <- iris[order(iris$Sepal.Length),]
head(iris.new)
iris[order(iris$Species, -iris$Petal.Length, decreasing=T),]


# code 7-11
sp <- split(iris, iris$Species)
sp
summary(sp)
str(sp)
class(sp)
typeof(sp)
mode(sp)

sp$setosa
sp$virginica
sp$versicolor
sp[[1]]
sp[[2]]
sp[[3]]

# code 7-12
subset(iris, Species == "setosa")
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)
subset(iris, Sepal.Length > 7.6, select=c(Petal.Length, Petal.Width))

iris[c(1,2)]
iris[colnames(iris)[1:2]]
iris[colnames(iris)[3:4]]


# 다음은 동일
subset(iris, Sepal.Length > 7.6, select=c(Petal.Length, Petal.Width))
subset(iris, Sepal.Length > 7.6)[colnames(iris)[3:4]]


# code 7-13
x <- 1:100
y <- sample(x, size=10, replace = FALSE)
y

# code 7-14
idx <- sample(1:nrow(iris), size=50, replace = FALSE)
idx
iris.50 <- iris[idx,]
dim(iris.50)
head(iris.50)
View(iris.50)

# code 7-15
sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)

set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)


if (!require(dplyr)) {
  install.packages("dplyr")
}
library(dplyr)

??sample_n
sample_n(iris, 10)
sample_frac(iris) # 전체
sample_frac(iris, .1) # 10%
sample_frac(iris, .2) # 20%

# code 7-16
combn(1:5, 3)

x = c("red", "green", "blue", "black", "white")
com <- combn(x, 2)
com
str(com)
class(com)
typeof(com)
ncol(com)

for(i in 1:ncol(com)) {           # 조합을 출력
  cat(com[,i], "\n")
}

# choose() 조합의 수(종류)를 반환하는 함수
choose(5, 3)
choose(5, 4)
choose(5, 2)

















