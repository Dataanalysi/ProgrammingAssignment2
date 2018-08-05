## The written functions calculates the inverse of the matrix and the other function catches
## its value to save the time by calculating it again and again.

## This function catches the value of inverse matrix calculated by the next function

makeCacheMatrix <- function(x = matrix()) {
  ci <- NULL #calculated inverse
  set <- function(y){
    x <<- y
    ci <<- NULL
    
  }
  get <- function()x
  setinv <- function(inverse)ci <<- inverse
  getinv <- function() ci
  list(set = set, get= get,
       setinv = setinv,
       getinv = getinv)
  
}



## This function finds the inverse of the matrix and return its value

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ci <- x$getinv()
  if(!is.null(ci)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  ci <- solve(data, ...)
  x$setci(ci)
  inv
}
