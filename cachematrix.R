## Put comments here that give an overall description of what your
## functions do keep a speical inv of the matrix once calculated
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  # used to change matrix to a new value
  setMatrix <- function(new_m = matrix()) {
    ## once matrix is set a new value, 
    ## inverse becomes null again
    x <<- new_m
    inv <<- NULL
  }
  # cache the inverse
  setInverse <- function(inv_in = matrix()) {
    int <<- inv_in
  }
  getMatrix <- function() x
  getInverse <- function() inv
  
  list (setMatrix = setMatrix, setInverse = setInverse, 
        getMatrix = getMatrix, getInverse = getInverse)
}


## Write a short comment describing this function
## find the inverse of type makeCacheMatrix
cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("getting cached inverse")
    return(inverse)
  }
  mat <- x$getMatrix()
  new_inv <- solve(mat)
  x$setInverse(new_inv)
  new_inv
  ## Return a matrix that is the inverse of 'x'
}
