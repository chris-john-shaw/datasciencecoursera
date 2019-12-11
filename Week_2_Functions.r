##Create a basic functon

add2 <- function(x, y) {
        x + y
}

above10 <- function(x) {
      use <- x > 10
      x[use]
  
}

add2(1, 2)

above10(11)


##Function with for loop to caluclate mean

columnmean <- function(y, removeNA = TRUE) {
        nc <- ncol(y)
        means <- numeric(nc)
        for(i in 1:nc) {
                  means[i] <- mean(y[,i], na.rm = removeNA)
        }
        means
}
