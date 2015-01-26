## These functions cache the inverse of a matrix.
##  

## Function makeCacheMatrix creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setInverse <- function(inverse) m <<-inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
               
}


## Function cacheSolve calculates the inverse of the matrix object returned by makeCacheMatrix or 
## retrieves it from the cache if previously calculated.

cacheSolve <- function(x, ...) {

        m <- x$getInverse()
        
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        m <- solve(x$get())
        x$setInverse(m)
        m
}
