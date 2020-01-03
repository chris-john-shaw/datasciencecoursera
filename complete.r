

complete <- function(directory, id = 1:332){
  
  #id <- 1:10
  #directory <- "specdata"
  directory <- paste(getwd(), "/", directory, "/", sep = "")
  file_list <- list.files(directory)

  y <- vector()
  for (i in id)  {
    file_dir <- paste(directory,file_list[i],sep="")
    file_data <- read.csv(file_dir)
    
    x <- id
    y <- c(y, nrow(na.omit(file_data)))

  #  y <- c(y, sum(complete.cases(
   #   read.csv(file_dir))))   
    
  }
  
df <- data.frame(x, y)
colnames(df) <- c("id", "nobs")

return(df)

}


  
  