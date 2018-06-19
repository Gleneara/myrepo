#SICSS day two sample analysis 
data("mtcars")
??mtcars
str(mtcars)
mtcars$mpg
head(mtcars)
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
names(mtcars)
summary(mtcars)
install.packages("pastecs")
library(pastecs)
stat.desc(mtcars)
install.packages("psych")
library(psych)
mode <- ncol(mtcars)
Mode <- function(x) {
  if (is.numeric(x)) {
    x_table <- table(x)
    return(as.numeric(names(x_table)[which.max(x_table)]))
  }
}
Mode(mtcars)
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(mtcars)