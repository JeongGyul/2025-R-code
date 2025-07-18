# 3일차 1교시
# 단원 5

rm(list=ls())

# ----- 5-1.R -----
favorite <- c("WINTER", "SUMMER", "SPRING", "SUMMER", "SUMMER", "FALL", "FALL", "SUMMER", "SPRING", "SPRING")
favorite
table(favorite)
table(favorite)/length(favorite)

# ----- 5-2.R -----
ds <- table(favorite)
ds
barplot(ds, main="favorite season")
barplot(ds, main="favorite season", las=1)

# ----- 5-3.R -----
ds <- table(favorite)
ds
pie(ds, main="favorite season")

# ----- 5-4.R -----
favorite.color <- c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2)
ds <- table(favorite.color)
ds
str(ds)
barplot(ds, main="favorite color")
barplot(ds, main="favorite color", las=0)
barplot(ds, main="favorite color", las=1)
barplot(ds, main="favorite color", las=2)
barplot(ds, main="favorite color", las=3)


colors <- c('green', 'red', 'blue')
names(ds) <- colors
ds
barplot(ds, main="favorite color", col=colors)
pie(ds, main="favorite color", col=colors)




# 문자형 벡터
gender <- c("male", "female", "female", "male", "female")

#factor로 변환
gender_factor <- factor(gender)

print(gender_factor)
levels(gender_factor)

size <- c("small", "large", "medium", "small", "large")
size_factor <- factor(size, levels = c("small", "medium", "large"))
print(size_factor)
levels(size_factor)
nlevels(size_factor)
class(size_factor)

grade <- c("C", "B", "A", "B", "C")
grade_factor <- factor(grade, levels = c("C", "B", "A"), ordered = TRUE)
print(grade_factor)

blood <- c("A", "B", "O", "A", "AB", "O", "A")
blood_factor <- factor(blood)
table(blood_factor)
nlevels(blood_factor)



# ----- 5-5.R -----
weight <- c(60, 62, 64, 65, 68, 69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim=0.2)
mean(weight.heavy, trim=0.2)

# ----- 5-6.R -----
mydata <- c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata)
quantile(mydata, c(.1, .2, .5, .6, .9, 1))
quantile(mydata, (0:10)/10)
summary(mydata)

# ----- 5-7.R -----
mydata <- c(60, 62, 64, 65, 68, 69, 120)
var(mydata)
sd(mydata)
range(mydata)

diff(range(mydata))
diff(c(150, 22))
diff(range(c(150, 22)))
diff(c(10, 100))


# ----- 5-8.R -----
cars
str(cars)
head(cars)

dist <- cars[, 2]
dist
range(dist)
hist(dist,
     main="Histogram for 제동거리",
     xlab="제동거리",
     ylab="빈도수",
     border="blue",
     col="green",
     las=2,
     breaks=2)

hist(dist,
     main="Histogram for 제동거리",
     xlab="제동거리",
     ylab="빈도수",
     border="blue",
     col="green",
     las=2,
     breaks=5)


# ----- 5-9.R -----
dist <- cars[, 2]
boxplot(dist, main="자동차 제동거리")
range(cars[, 2])
quantile(cars[, 2])

boxplot(cars[, 1], main="자동차 속도")
range(cars[, 1])

# ----- 5-10.R -----
boxplot.stats(dist)

# ----- 5-11.R -----
boxplot(Petal.Length~Species, data=iris, main="품종별 꽃잎의 길이")




mtcars
head(mtcars)
str(mtcars)
summary(mtcars)

dev.off()
par(mfrow=c(1,3))    # 1x3 가상화면 분할
barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab="#of carburetors",
        ylab="frequency",
        col="blue")
barplot(table(mtcars$cyl),
        main="Barplot of Cylender",
        xlab="#of cylender",
        ylab="frequency",
        col="red")
barplot(table(mtcars$gear),
        main="Barplot of Grar",
        xlab="#of gears",
        ylab="frequency",
        col="green")
par(mfrow=c(1,1)) #  해제


























