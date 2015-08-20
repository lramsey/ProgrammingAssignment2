## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## contains three helper methods for the input matrix
## a getMatrix method to retrieve the matrix
## a getInverse method to retrieve the cached matrix value in the makeCacheMatrix environment.
## if matrix not cached, returns null
## a solveAndCacheInverse method to solve for the inverse of the input matrix
## and then set the inverse of the input matrix in the cache variable

makeCacheMatrix <- function(x = matrix()) {

        inverse <- NULL

        getMatrix <- function() {
                x
        }

        getInverse <- function() {
                inverse
        }

        solveAndCacheInverse <- function() {
                inverse <<- solve(x)
        }

        list( getMatrix = getMatrix, getInverse = getInverse, solveAndCacheInverse = solveAndCacheInverse )
}


## Write a short comment describing this function

## call cache matrix getInverse method

## if return value is null, call the solveAndCacheInverse method
## this method sets the inverse variable in makeCacheMatrix environment and return inverse

## return inverse

cacheSolve <- function(x, ...) {

        inverse <- x$getInverse()

        if( is.null( inverse ) ) {
                inverse <- x$solveAndCacheInverse()
        }

        inverse
}
