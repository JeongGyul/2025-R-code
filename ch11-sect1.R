rm(list=ls())

# 11-1.R
head(cars)
plot(dist~speed, data=cars)

model <- lm(dist~speed, cars)
model
str(model)

abline(model)
coef(model)
model$coefficients

coef(model)[1]
coef(model)[2]

# 11-2.R
b <- coef(model)[1]
W <- coef(model)[2]

speed <- 30
dist <- W * speed + b
dist

speed <- 35
dist <- W * speed + b
dist

speed <- 40
dist <- W * speed + b
dist


# 11-3.R
speed <- cars[,1]
pred <- W * speed + b
pred

compare <- data.frame(pred, cars[,2], pred-cars[,2])
colnames(compare) <- c("예상", "실제", "오차")
head(compare)
str(model)

# 11-4.R
if (!require("car")) {
  install.packages("car")
}

library(car)

head(Prestige)
newdata <- Prestige[,c(1:4)]
plot(newdata, pch=16, col="blue",
     main="Matrix Scatterplot")
mod1 <- lm(income ~ education + prestige +
             women, data=newdata)
summary(mod1)

head(Prestige)
tail(Prestige)
str(Prestige)
class(Prestige)

sum(is.na(Prestige))
Prestige[!complete.cases(Prestige),]

# 11-5.R
library(MASS)
newdata2 <- Prestige[c(1:5)]
head(newdata2)
mod2 <- lm(income ~ education + prestige + 
             women + census, data = newdata2)
summary(mod2)

mod3 <- stepAIC(mod2)
mod3
summary(mod3)


# 연습
x <- 1:10
y <- 2 * x + rnorm(10)
smodel <- lm(y ~ x)

plot(x, y)
abline(smodel)    # 회귀 직선 추가
abline(coef(smodel)[1], coef(smodel)[2]) # 회귀 직선 추가
abline(smodel, col = "red", lty="dashed", lwd = 2)


# 11-6.R
iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)
mod.iris <- glm(Species~., data=iris.new)
summary(mod.iris)

# 11-7.R
unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unknown) <- names(iris)[1:4]
unknown

pred <- predict(mod.iris, unknown)
pred
round(pred, 0)

pred <- round(pred, 0)
pred
levels(iris$Species)
levels(iris$Species)[pred]

# 11-8.R
test <- iris[, 1:4]
pred <- predict(mod.iris, test)
pred <- round(pred, 0)
pred

answer <- as.integer(iris$Species)
pred == answer
iris[pred != answer,]

acc <- mean(pred == answer)
acc



if (!require("nnet")) {
  install.packages("nnet")
}
library(nnet)

data(iris)
iris.new <- iris

mod.iris <- multinom(Species ~ ., data = iris.new)

pred_species <- predict(mod.iris, type="class") # class로 직접 예측
pred_species

iris[pred_species != iris$Species, ]

acc <- mean(pred_species == iris$Species)
acc
















