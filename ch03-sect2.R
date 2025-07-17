### 7/17 2일차 학습

# 복습
# 기본 자료형
a <- 3.4
a
# the internal structure of an a object
str(a)
typeof(a)

b <- 3
b
str(b)
typeof(b)

c <- 3L
c
str(c)
typeof(c)

c
c[1]
is.vector(c)
c[2] <- 10
c
typeof(c)

# dataframe
city <- c("Seoul", "Tokyo", "Washington")
city
rank <- c(1, 3, 2)
rank
city.info <- data.frame(city, rank)
city.info

str(city.info)
typeof(city.info)
class(city.info)
is.data.frame(city.info)
is.list(city.info)

#iris 데이터셋 소개
# code 3-9
iris
str(iris)
typeof(iris)
class(iris)
is.data.frame(iris)
is.list(iris)

str(iris$Species)
levels(iris$Species)

# iris 데이터 참조
head(iris)
tail(iris)
iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length", "Species")]
iris[1:5,]
head(iris, 5)
iris[1:5,c(1,3)]

dim(iris)
dim(iris)[1] # 행수
dim(iris)[2] # 열수
nrow(iris)
ncol(iris)
colnames(iris)
colnames(iris)[2]
rownames(iris)

head(iris)
tail(iris)

str(iris)
iris[, 5]

unique(iris[, 5])
unique(iris[, "Species"])
table(iris[, 5])
table(iris[, "Species"])

colSums(iris[, -5])
# colSums(iris[,]) # 오류
colMeans(iris[, -5])
rowSums(iris[, -5])
rowMeans(iris[, -5])

## 기초통계량
summary(iris)
class(summary(iris))

# code 3-13
z <- matrix(1:20, nrow=4, ncol=5)
z
t(z) # 행과 열 방향 전환

# code 3-14
IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[, c(2,4)] # 2, 4열의 값만 추출
IR.2[, c(1,2)]

# code 3-15
a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)
a
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b

a
a <- a*3
a
b
b <- b-5
b

# a : matrix
a <- matrix(1:20, 4, 5)
str(a)
class(a)
is.matrix(a)
is.data.frame(a)

# iris: data.frame
iris
str(iris)
class(iris)
is.matrix(iris)
is.data.frame(iris)

# state.x77: matrix
state.x77
str(state.x77)
class(state.x77)
is.matrix(state.x77)
is.data.frame(state.x77)

# 행과 열 이름 지정
m <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE,
            dimnames = list(c("Row1", "Row2"), c("Col1", "Col2", "Col3")))
m

str(m)
class(m)
is.matrix(m)
is.data.frame(m)

# code 3-17
# 매트릭스를 데이터프레임으로 변환
st <- data.frame(state.x77)
head(st)
class(st)

st <- as.data.frame(state.x77)
head(st)
class(st)

# 데이터프레임을 매트릭스로 변환
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

# 모두 char로 변환
iris.m <- as.matrix(iris)
head(iris.m)
class(iris.m)

# code 3-18 열참조
iris[, "Species"]
iris[, 5]
str(iris[, 5])

# 열참조, 반환값: 데이터프레임
str(iris[1])

iris["Species"]
iris[5]

iris$Species

is.factor(iris$Species)
is.vector(iris$Species)
is.vector(c(1,2))

# code 3-19
getwd() # 작업공간 폴더 반환

airquality
str(airquality)
summary(airquality)

getwd()
write.csv(airquality, file="airquality.csv")
write.csv(airquality, file="ch03/airquality.csv")
write.csv(airquality, file="ch03\\airquality.csv")

# 작업 폴더 지정
air <- read.csv("airquality.csv", header=T) # .csv 파일 읽기
head(air)
air
str(air)

my.iris <- subset(iris, Species=='setosa') # setosa 품종 데이터만 추출
my.iris
write.csv(my.iris, "my_iris.csv", row.names=F) # .csv 파일에 저장하기



