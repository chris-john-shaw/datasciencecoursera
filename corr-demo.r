source("complete.R")

corr <- function(directory, threshold = 0) {
  result <- numeric()
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  complete_df <- complete(directory)
  
  # subset rows that have number of observations greater than `threshold`
  usable_df <- complete_df[complete_df$nobs > threshold,]
  
  for(monitor_id in usable_df$id) {
    # read data frame for monitors past the threshold
    path <- sprintf("%s/%03d.csv", directory, monitor_id)
    df <- read.csv(path, header = TRUE, comment.char = "")
    
    correlation <- cor(x = df$sulfate, y = df$nitrate, use = "complete.obs")
    result <- c(result, correlation)
  }
  
  result 
  
}
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))