
## If Else statement syntax


X <- 4
x <- is.integer(x) 
class(x)

y<- if (x > 3) {
  10
} else {
  0
  
}
y



## For loop syntax

for(i in 1:10) {
        print(i)
}


x <- c("a", "b", "c", "d")

##1

for(i in 1:4) {
    print(x[i])
}

##2

for(i in seq_along(x)) {
    print(x[i])
}

##3

for(letter in x) {
    print(letter)
  }

##4 where there is only one condition, but dont use it!

for(i in 1:4) print(x[i])


##5 nested for loop

x <- matrix(1:6, 2, 3 )
x

for(i in seq_len(nrow(x))) {
    for(j in seq_len(ncol(x))){
      print(x[i, j])
      
      
    }
  }



## While loops syntax

count <- 0
while(count < 10) {
  print(count)
  count <- count+1
}



## while loop with 2 conditions
z <- 5

while (z >= 3 && z<=10) {
    print(z)
    coin <- rbinom(1, 1, 0.5)
    
    if(coin==1) { ##random walk
        z <- z + 1 
    } else {
        z <- z - 1
        }
}



## Repeat Syntax  don't run
x0 <- 1
tol <- 1e-8

repeat {
        xl <- computeEstimate()
        
        if(abs(xl - x0) < tol) {
              break
        } else {
                x0 <- xl
        } 
  
}




## Next/Return syntax

for(i in 1:100) {
  
  if(i <20) {
    
    next ##skip first 20 rows
  }
  
  return(i)
  
  
}













