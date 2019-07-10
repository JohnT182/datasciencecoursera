## First function creates a matrix that can cache its inverse
## Second function solves for inverse of the cachematrix and returns
## the cached inverse if already solved
## Creates a matrix which can cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set<- function(y){
    x<<-y
    inv<<-NULL
    
  }
 get <-function() x 
 setInverse <- function(solveMatrix) inv <<- solvematrix
 getInverse <- function() inv
 list(set=set,get=get, setInverse=setInverse,getInverse=getInverse)
}


## Returns inverse of matrix retruned by makeCacheMatrix
##
cacheSolve <- function(x, ...) {cachemean <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- mean(data)
  x$setInverse(inv)
  inv
}
  ## Return a matrix that is the inverse of 'x'
}
