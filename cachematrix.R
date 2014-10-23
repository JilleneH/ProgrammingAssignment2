## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## THis function will create a special matrix object that can cache the inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function
## This function will compute the inverse of the makeCacheMatrix
cacheSolve <- function(x, ...) {
  inv_x <- x$getinverse()
  if (!is.null(inv_x)) {
    message("getting cached inverse matrix")
    return(inv_x)
  } else {
    inv_x <- solve(x$get())
    x$setinverse(inv_x)
    return(inv_x)
    
  
}
