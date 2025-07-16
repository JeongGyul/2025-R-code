# 단원 2, 4-5절
rm(list=ls())

a <- 1:10
a
a[1]
a[10]
a[c(1, 3)]

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)
v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2
mean(d)

d <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
d>=5
d[d > 5]
sum(d > 5)
sum(d[d > 5])
d==5

condi <- d > 5 | d < 8
condi
d[condi]


ds <- c(90, 85, 70, 84)
my.info <- list(name='Tom', age=60, status=TRUE, score=ds)
my.info
str(my.info)

my.info[[1]]
my.info$name

my.info[[2]]
my.info$age

my.info[[3]]
my.info$status

my.info[[4]]
my.info$score

my.info[[1]]   # 괄호 두겹쓰면 첫번째 원소만 출력
my.info[1]     # 괄호 하나쓰면 첫번째 원소를 담은 리스트 출력

my.info[[2]]
my.info[2]

a <- my.info[[3]]
a
str(a)

b <- my.info[3]
b
str(b)

c <- my.info[[4]]
c
str(c)

d <- my.info[4]
d
str(d)

my.info[4]


s <- list('a', 1, TRUE, c(1, 2, 3))
s
str(s)
s[[1]]
s[1]

# factor(명목형 범주): 순서가 없음

bt <- c('A', 'B', 'B', 'O', 'AB', 'A')
bt
str(bt)
bt.new <- factor(bt)
bt.new
str(bt.new)

bt[5]
bt.new[5]
levels(bt.new)

as.integer(bt.new)
bt.new[6]
bt.new[7] <- 'C'
bt.new

# factor(순서형 범주): 순서가 있음

grade = factor(c('A', 'C', 'D', 'B', 'B', 'C'), 
               levels=c('F', 'D', 'C', 'B', 'A'),
               ordered = TRUE)

grade
grade[1] > grade[3]
grade[7] <- 'F'
grade

fruit <- factor(c("apple", "banana", "apple", "cherry", "cherry", "apple"))
fruit

levels(fruit) <- c("apple", "banana", "cherry", "mango")
fruit

fruit[7] <- "mango"
fruit







