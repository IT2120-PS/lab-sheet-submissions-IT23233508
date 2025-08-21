setwd("C:\\Users\\it23233508\\Desktop\\IT23233508_lab04")

#Q1
branch_data <-read.table("Exercise.txt",header=TRUE ,sep=",")

#2
fix(branch_data)
str(branch_data)
attach(branch_data)

#3
#obtain  boxplot for sales _X1
boxplot(branch_data$Sales_X1,main ="Box plot for Sales",outline = TRUE,outpch = 8,horizontal = TRUE)

#q4
##five - number summary
summary(Advertising_X2)

#iqr
IQR(Advertising_X2)

#q5
get.outliers<- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers:", paste(sort(z[z<lb | z>ub]), collapse = ",")))
  
}

# Check for outliers in the 'years' variable
get.outliers(Years_X3)A
