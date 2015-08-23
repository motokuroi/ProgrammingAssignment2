## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## List can handle matrix, too.  So, it is basically the same logic as the example.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get, 
       setsolve = setsolve, 
       getsolve = getsolve)
}


## Write a short comment describing this function
## As the example showed, the list contains x and solve(x) can answer the question without computing.

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}


