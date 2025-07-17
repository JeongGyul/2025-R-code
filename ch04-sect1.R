# 2일차 2교시
# 단원 4

rm(list=ls())




# ----- 4-1.R -----
job.type <- 'A'
job.type

if(job.type == 'B') {
  bonus <- 200
} else {
  bonus <- 100
}
bonus



# ----- 4-2.R -----
job.type <- 'B'
job.type
bonus <- 100
bonus

if(job.type == 'A') {
  bonus <- 200
}
bonus



# ----- 4-3.R -----
score <- 85

if(score > 90) {
  grade <- 'A'
} else if (score > 80) {
  grade <- 'B'
} else if (score > 70) {
  grade <- 'C'
} else if (score > 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}
grade



# ----- 4-4.R -----
a <- 10
b <- 20
if(a>5 & b>5) {
  print(a+b)
}
if(a>5 | b>30) {
  print(a*b)
}



# ----- 4-5.R -----
a <- 10
b <- 20

if(a>b) {
  c <- a
} else {
  c <- b
}
print(c)

a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)

# 다음은 가능하지만 비추천
x <- 10
if (x > 0)
  print("x는 양수입니다.") else
    print("x는 0이거나 음수입니다.")

#  다음처럼 한줄에 else 구문은 정상 실행됨
if (x > 0) print("x는 양수입니다.") else print("x는 0이거나 음수입니다.")


# ----- 4-6.R -----
for(i in 1:5) {
  print('*')
}


# ----- 4-7.R -----
for(i in 6:10) {
  print(i)
}


# ----- 4-8.R -----
for(i in 1:9) {
  cat('2 *', i, '=', 2*i, '\n')
}


# ----- 4-9.R -----
for(i in 1:20) {
  if(i %% 2 == 0) {
    print(i)
  }
}

# ----- 4-10.R -----
sum <-  0
for(i in 1:100) {
  sum <- sum + i
}
print(sum)

# ----- 4-11.R -----
norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow) {
  if(iris$Petal.Length[i] <= 1.6) {
    mylabel[i] <- 'L'
  } else if(iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)
View(newds)



# ----- 4-12.R -----
sum <- 0
i <- 1
while(i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)


# ----- 4-13.R -----
sum <- 0
for(i in 1:10) {
  sum <- sum + i
  if(i>=5) break
}
sum

# ----- 4-14.R -----
sum <- 0
for(i in 1:10) {
  if(i%%2 == 0) next
  sum <- sum + i
}
sum

##### repeat 무한반복
repeat {
  num <- as.numeric(readline(prompt = "숫자를 입력하세요 (0을 입력하면 종료): "))
  if (num == 0) {
    cat("프로그램을 종료합니다.\n")
    break
  }
  cat("입력한 숫자:", num, "\n")
}

repeat {
  data <- readline(prompt = "숫자를 입력하세요 (0을 입력하면 종료): ")
  num <- as.numeric(data)
  if (num == 0) {
    cat("프로그램을 종료합니다.\n")
    break
  }
  cat("입력한 숫자:", num, "\n")
}


# ----- 4-15.R -----
apply(iris[,1:4], 1, mean) # row 방향으로 함수 적용
apply(iris[,1:4], 2, mean) # col 방향으로 함수 적용
apply(iris[,1:4], MARGIN=1, mean) # row 방향으로 함수 적용
apply(iris[,1:4], MARGIN=2, mean) # col 방향으로 함수 적용



range(1:10)
range(iris$Sepal.Length)
range(iris$Sepal.Width)
range(iris$Petal.Length)
range(iris$Petal.Width)

apply(iris[,1:4], MARGIN=2, min)
apply(iris[,1:4], MARGIN=2, max)
apply(iris[,1:4], MARGIN=2, range)
























