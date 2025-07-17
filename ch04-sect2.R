# 2일차 5교시
# 단원 4

rm(list=ls())

# ----- 4-16.R -----
mymax <- function(x, y) {
  num.max <- x
  if(y > x) {
    num.max <- y
  }
  return(num.max)
}

# ----- 4-17.R -----
mymax(10, 15)
a <- mymax(20, 15)
b <- mymax(31, 45)
print(a+b)

# ----- 4-18.R -----
mydiv <- function(x, y=2) {
  result <- x/y
  return(result)
}

mydiv(x=10, y=3)
mydiv(10, 3)
mydiv(10)

# ----- 4-19.R -----
myfunc <- function(x, y) {
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}

result <- myfunc(5,8)
str(result)
s <- result$sum
m <- result$mul
s <- result[[1]]
m <- result[[2]]
cat('5+8=', s, '\n')
cat('5*8=', m, '\n')



myfunc2 <- function(x, y) {
  val.sum <- x+y
  val.mul <- x*y
  return(c(val.sum, val.mul))
}

result2 <- myfunc2(5,8)
str(result2)
s <- result2[1]
m <- result2[2]
cat('5+8=', s, '\n')
cat('5*8=', m, '\n')



# ----- 4-20.R -----
source("ch04/myfunc.R") # myfunc.R 안에 있는 함수 실행

# 함수 사용
a <- mydiv2(20, 4)
b <- mydiv2(30, 4)
a
b
a+b
mydiv2(mydiv2(20,2), 5)

# ----- 4-21.R -----
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
score

which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)

score[which(score==69)]
score[which.max(score)]


# ----- 4-22.R -----
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <- which(score <= 60)
idx
score[idx] <- 61
score

idx <- which(score >= 80)
score.high <- score[idx]
score.high

# ----- 4-23.R -----
idx <- which(iris$Petal.Length > 5.0)
idx
iris.big <- iris[idx,]
iris.big

# 데이터 객체의구조를 간단하게 요약해서 보여주는 함수
str(iris.big)

# ----- 4-24.R -----
# which() 조건을 만족하는 요소의 인덱스(위치)를 반환하는 함수
m <- matrix(1:9, nrow = 3)
m
# 값이 5보다 큰 요소의 위치
result <- which(m > 5, arr.ind = TRUE)
print(result)

result <- which(m > 5, arr.ind = FALSE)
print(result)

result <- which(matrix(11:19, nrow = 3) > 15, arr.ind = FALSE)
print(result)

result <- which(matrix(11:19, nrow = 3) > 15, arr.ind = TRUE)
print(result)

#### 참조하기
m <- matrix(11:19, nrow = 3)
m
result <- which(m > 15)  # 벡터 인덱스 반환 (기본값)
print(result) # 벡터의 index로 반환
m[result]

m
result <- which(m > 15, arr.ind = TRUE)
print(result)
m[result]  # 이것도 문제 없는 듯 함
m[cbind(result[,1], result[,2])] # 동작함 (정석)

# 1~4열의 값 중 5보다 큰 값의 행과 열의 위치
# arr.ind: 행혈이나 배열에서 사용.
# TRUE로 설정하면 조건을 만족하는 요소의 행과 열 인덱스를 반환.
str(iris)
str(iris[,1:4] > 5.0)
is.matrix(iris[,1:4] > 5.0)

idx <- which(iris[,1:4] > 5.0, arr.ind = TRUE) # 행 열 첨자 행열
idx
iris[,1:4]
iris[,1:4][idx[1,1], idx[1, 2]]
iris[1, 1]

idx <- which(iris[,1:4] > 5.0) # 순서 첨자 벡터
idx

# 다음처럼 idx로 바로 참조 가능
idx <- which(iris[,1:4] > 5.0, arr.ind = TRUE) # 행 열 첨자 배열
idx
iris[,1:4][idx]
head(iris)






















