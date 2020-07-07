## Put comments here that give an overall description of what your
## functions do

## This function takes an square matrix (set and get the matrix), finds the inverse with Solve() Funct-
##tion and save it (set and get the matrix's inverse)

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y){
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inversa <<- solveMatrix
  getInverse <- function() inversa
  list(set = set, get= get, setInverse = setInverse, getInverse = getInverse)
}



## This function finds the matrix's inverse with the above function but first, it checks if this
#was already calculated and if it so, gets the value from the cache.
cacheSolve <- function(x, ...) {
  
  inversa <- x$getInverse()
  if(!is.null(inversa)) {
    message("getting cached data")
    return(inversa)
  }
  data <- x$get()
  inversa <- solveMatrix(data, ...)
  x$setInverse(inversa)
  inversa
        ## Return a matrix that is the inverse of 'x'
}
