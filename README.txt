#Project Introduction:

-->The dataset was collected to predict the rank which could be assigned to a faculty/ staff member of the organization. 
It was collected in 2018-19 nine-month academic salary for Assistant Professors, Associate Professors and Professors in a college in the INDIA. 
The data were collected as part of the on-going effort of the college's administration to monitor salary differences between male and female faculty members and to 
also assign a particular rank on the basis of the service years and number of year from passing Phd. 
Total 202 records 

#Dataset Overview:
 
4 numeric attributes: Sr.No, PhdExp, ServiceYrs, Salary 
2 multi-valued categorical attributes: Rank, Sex 
1 yes/no binary attributes: Gender 
No missing values: Preprocessing should be easier 



#Code Desciption:

sal<-read.csv(file.choose(),header = T)
-->This command loads the dataset file into the variable sal.
-->read.csv and file.choose command allow us to choose a dataset from the location where it saved and read the contents of the dataset. header = T ie. header = True which means column name of dataset should be proper.

attach(sal)
-->This command is used to attach a dataset on which we are going to perform operations.
-->So the dataset sal is attached here.

names(sal)
-->This command shows the names of all variables ie.columns of the table.
-->Names of variables in the dataset sal are Sr.no , Rank, Discipline, Phdexp, Serviceyrs, Sex, Salary.

View(sal)
-->This command enables us to see the database into Rstudio itself. So we don’t have to shift several times into excel file.

mean(Phdexp)
-->It is used to calculate by taking the sum of the values and dividing with the number values in a particular column.
-->Here we have chosen the Phdexp column and the mean of this column is 22.314 .


median(Phdexp)
-->The middle most value in a dataset series is called the median. This function is used in R to calculate the values.
-->Here we have chosen the Phdexp column and the median of this column is 21 .

summary(sal)
-->This command will give detailed information about all parameters from each column of the dataset.
-->For the columns having numeric values it will show values like minimum, maximum, mean, median, 1st quartile, 3rd quartile.
-->For the columns having catagorical values it will show the count of same values in the column.

str(sal)
-->This  function is used to get all information about what type of column the dataset belong.
-->For eg. Sr.no is numeric that is integer and Rank is factor that has 3 levels which is Assistant Professor, Associate Professor and Professor.

hist(Serviceyrs, main="Histogram for Service year", col=2, lwd=3)
-->This command plots the histogram of the column which we define.
-->Here we have defined Serviceyrs column.
-->The main command is used to define a title for histogram plot.
-->col=2 means colour=2 which is red and lwd=3 means line width of the histogram.

barplot(Serviceyrs, main="BarPlot for Service year", col=2, lwd=3)
-->Using this command we can plot a bar chart of a defined column.

plot(Serviceyrs, main="Scatter Plot", xlab="Service Year",col=2, lwd=3)
-->This command is used to plot a scatter plot of a defined column.

library(rpart)
library(rpart.plot)
-->Since we have chosen the decision tree as an algorithm we need to install and import these two libraries.

nn<- rpart(Rank~Discipline+Serviceyrs,sal)
a4<-data.frame(Discipline=c("A"),Serviceyrs=c(41))
res3=predict(nn,a4)
rpart.plot(nn)
-->This command plots a decision tree using two or more columns.
-->In the first line of this command we have created a variable called as nn then we have defined rpart function in which we will define a Rank on the basis of Discipline and Serviceyrs from the dataset sal.
-->In the second line of this command we have created a variable called as a4 which is associated with the dataframe which contains Discipline and Serviceyrs.
-->In the next line of command we are going to save this data by prediction in res3 which will predict nn and a4. So now res3 is been stored in nn as value.
-->Now in the last line we are going to plot a decision tree by using rpart.plot function which uses values stored in nn for plotting a decision tree.

