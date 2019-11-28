


df<- read.csv("C:\\Users\\chris.shaw\\Documents\\hw1_data.csv", header = TRUE, sep = ",")


df


names(df)

print(df)
head(df,4)
tail(df,2)


##how many missing values in Ozone
sum(is.na(df$Ozone))

##caluclate mean, rmeove missing values

 mean(df$Ozone, na.rm = TRUE)

 
 
 
 ## Extract the subset of rows of the data frame where Ozone 
 ## values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
 
 df2 <- subset(df, Ozone > 31 & Temp > 90)
 
 
 mean(df2$Solar.R, na.rm = TRUE)
 
 ## What is the mean of "Temp" when "Month" is equal to 6?
 
 df3 <- subset(df, Month ==6)
 mean(df3$Temp, na.rm = TRUE)
 
 
 ##What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
 
 df4 <- subset(df, Month ==5)
 max(df4$Ozone, na.rm = TRUE)
 
 
 
 
 
 