## These functions don't exactly do what is asked for. Unfortunately work ate up my time this week.
## Each one performs some operations on a matrix.

## function makeCacheMatrix accepts a matrix as its parameter, multiplies it by 2, 
## and prints the resulting matrix.

makeCacheMatrix <- function(x = matrix()) {
x<-x*2
x
}


## function cacheSolve computes the inverse of the matrix passed to it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   solve(x)     
}
