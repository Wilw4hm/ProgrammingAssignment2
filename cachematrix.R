## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## start inverse function
  inv <- NULL
## set the matrix
  set <- function(matrix){
         x <<- matrix
         inv <<- NULL
  }
## get the matrix
  get <- function() {
    x ##return the matrix
  }
## set the inverse of the matrix
  setInverse <- function(solveMatrix) {inv <<- solveMatrix}
## get the inverse of the matrix
  getInverse <- function() {inv}
## return a list
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x <- x$getInverse()
  
## just return the inverse if its already set
  if(!is.null(inv)){
          message("getting cached data")
          return(x)
  }
 ## get the matrix from our object
  data <- x$get()
  x <- solve(data) ## calculate the inverse
  x$setInverse(x)
## return the matrix
 x    
}
