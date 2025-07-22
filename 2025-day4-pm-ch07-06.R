rm(list=ls())


# code 8-1
library(treemap) # treemap 패키지 불러오기
data(GNI2014) # 데이터 불러오기
head(GNI2014) # 데이터 내용보기
treemap(GNI2014,
        index=c("continent","iso3"), # 계층구조 설정(대륙-국가)
        vSize="population", # 타일의 크기
        vColor="GNI", # 타일의 컬러
        type="value", # 타일 컬러링 방법
        title="World's GNI") 


# table로 바로 모자이크 그리기
mosaicplot(~ vs + gear, data = mtcars, color=TRUE,
           main = "Gear and Vs")
tab <- table(mtcars$vs, mtcars$gear)
tab
str(tab)
mosaicplot(tab, color=TRUE, main = "Gear and Vs")

mosaicplot(~ vs + gear, data = mtcars, color=TRUE,
           main = "Gear and Vs")
tab <- table(mtcars$gear, mtcars$vs)
tab
mosaicplot(tab, color=TRUE, main="Gear and Vs")


# table 함수를 통한 생성
t <- table(c(1,2,3,1,1,3,3,3,1,2))
t
str(t)

# table 직접 생성
mytab <- structure(
  c(2, 3, 1, 4),                    # count 값
  dim = c(2,2),                     # 2행 2열
  dimnames = list(
    Gender = c("Male", "Female"),   # 행 이름
    Result = c("Pass", "Fail")      # 열 이름
  ),
  class = "table"
)
mytab
str(mytab)
class(mytab)


# 2차원 table
mat <- matrix(c(5,7,6,8), nrow=2,
              dimnames = list(c("A", "B"), c("X","Y")))
class(mat) <- "table"
mat
str(mat)
class(mat)

# 3차원 table
tab3d <- array(
  c(1:8),
  dim = c(2, 2, 2),
  dimnames = list(
    Gender = c("M", "F"),
    Result = c("Yes", "No"),
    Group = c("G1", "G2")
  )
)
class(tab3d) <- "table"
tab3d
str(tab3d)
class(tab3d)


# ch08-sect2.R
rm(list=ls())
gc()


# 8-5.R
if (!require("ggplot2")) {
  install.packages("ggplot2")
}
library(ggplot2)

mpg
str(mpg)

dev.off()
# homepage code
ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

str(mpg)


month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month, rain)
df

ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat="identity",
           width=0.7,
           fill="Steelblue")

# 8-6.R
ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat="identity",
           width=0.7,
           fill="steelblue") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=20, face="bold", colour="steelblue")) +
  labs(x="월", y="강수량") +
  coord_flip()



ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat="identity",
           width=0.7,
           fill="wheat") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=25, face="bold", colour="steelblue")) +
  labs(x="월", y="강수량")


# 다음 코드에서 y축 레이블 '월'을 정상적으로 표시
ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat="identity",
           width=0.7,
           fill="steelblue") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=20, face="bold", colour="steelblue"),
        axis.title.y = element_text(angle=0, vjust=0.5)) +
  labs(x="월", y="강수량") +
  coord_flip()

# 8-7.R
ggplot(iris, aes(x=Petal.Length)) +
  geom_histogram(binwidth=0.5)

ggplot(iris, aes(x=Petal.Length)) +
  geom_histogram(binwidth=1)

range(iris$Petal.Length)

# 8-8.R
range(iris$Sepal.Width)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 0.5, position="dodge") +
  theme(legend.position="top")

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 0.5, position="stack") +
  theme(legend.position="top")


# ggplot을 한 화면에 여러개 그리기
if (!require("gridExtra")) {
  install.packages("gridExtra")
}
library(gridExtra)

g1 <- ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 1, position="dodge") +
  theme(legend.position="top")

g2 <- ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 1, position="stack") +
  theme(legend.position="top")

# 플롯 배열, 2행 1열로 그리기
grid.arrange(g1, g2, nrow = 1, ncol = 2)



# 8-9.R
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point()


# 8-10.R
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width,
                      color=Species)) +
  geom_point(size=2) +
  ggtitle("꽃잎의 길이와 폭") +
  theme(plot.title = element_text(size=15, face="bold", colour="steelblue"))

# 8-11.R
ggplot(data=iris, aes(y=Petal.Length)) +
  geom_boxplot(fill="yellow")

# 8-12.R
ggplot(data=iris, aes(y=Petal.Length, fill=Species)) +
  geom_boxplot()

str(iris)
boxplot(iris$Petal.Length ~ iris$Species, iris,
        col = c("lightgray", "yellow", "skyblue"))

# 8-13.R
airmiles
class(airmiles)    # ts: time series 시계열 데이터
summary(airmiles)

year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
head(df)

ggplot(data=df, aes(x=year, y=cnt)) +
  geom_line(col="red")

plot(airmiles)


# ch08-sect3.R
rm(list=ls())

# 8-14.R
# 필요한 패키지 설치
if (!require("Rtsne")) {
  install.packages("Rtsne")
}
library(Rtsne)

# 패키지 로드
library(ggplot2)

ds <- iris[, -5]
ds
str(ds)

# 동일행: 102, 143행
iris[102, ]
iris[143, ]

# 중복 데이터 제거
duplicated(ds)
dup = which(duplicated(ds))
dup                               # 143번째 행 중복

ds <- ds[-dup,]
str(ds)

ds.y <- iris$Species[-dup]        # 중복을 제외한 품종 정보 
str(ds.y)
length(ds.y)

# t-SNE 실행
tsne <- Rtsne(ds, dims=2, perplexity=10)
tsne
str(tsne)

tsne$Y

# 축소결과 시각화
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y)) +
  geom_point(size=2)


# 8-15.R
install.packages(c("rgl", "car"))
library("car")
library("rgl")
library("mgcv")
library(Rtsne)

tsne <- Rtsne(ds, dims=3, perplexity=10)
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

# 회귀면이 포함된 3차원 산점도
scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3)

# 회귀면이 없는 3차원 산점도
points <- as.integer(ds.y)
points
color <- c('red', 'green', 'blue')
scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3,
          point.col = color[points],
          surface=FALSE)

scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3,
          point.col = color[points],
          surface=T)


