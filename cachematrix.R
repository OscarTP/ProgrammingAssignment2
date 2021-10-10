## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# Just change all the "mean" in example into "inverse" and "numeric" into "matrix"
# Also rename the objects

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)# the standard R function for matrix inverse is solve()
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
