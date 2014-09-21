## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix takes a matrix as input. It defines four functions
## set- initializes the values of cache and y
## get- gets the value
## setinverse- sets the cache 
## getinverse- returns the cache
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function
## tries to get the cached inverse
## if it is not available then calculated the inverse 
## sets the cache using setinverse and returns the inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
