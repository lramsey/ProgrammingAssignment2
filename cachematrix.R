## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## contains three helper methods for the input matrix
## a getMatrix method to retrieve the matrix
## a getInverse method to retrieve the cached matrix value in the makeCacheMatrix environment.  if matrix not cached, returns null
## a cacheInverse method to store the inverse of the input matrix in the cache variable

makeCacheMatrix <- function(x = matrix()) {

        inverse <- NULL

        getMatrix <- function() {
                x
        }

        getInverse <- function() {
                inverse
        }

        cacheInverse <- function() {
                inverse <<- solve(x)
        }

        list( getMatrix = getMatrix, getInverse = getInverse, cacheInverse = cacheInverse )
}


## Write a short comment describing this function

## call cache matrix getInverse method

## if return value is null, call the cacheInverse method to set inverse variable in makeCacheMatrix environment and output that variable

## return inverse

cacheSolve <- function(x, ...) {

        inverse <- x$getInverse()

        if( is.null( inverse ) ) {
                inverse <- x$cacheInverse()
        }

        inverse
}
