## This R code gives a pair of functions to cache the inverse of a matrix.

## Function makeCacheMatrix creates a special matrix-object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<-NULL
    }
    get <- function() x
    setinverse <- function(inverse) i<<- inverse
    getinverse <- function () i
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The function cacheSolve computes the inverse of the matrix created by makeCacheMatrix. 
## If the inverse has already been calculated, the inverse is retrieved from cache

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    ## Return a matrix that is the inverse of 'x'
    is    
}
