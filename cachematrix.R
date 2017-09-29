## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(K = matrix()) {
  inv<-NULL
  set <-function(y){
      K <<- y
      inv <<- NULL
    }
  get <-function() K
  setinverse<-function(inverse) inv <<- inverse
  getinverse<-function()inv
}


## Write a short comment describing this function
# This function computes the inverse of the special 
# "matrix" returned by makeCacheMatrix above.


  
cacheSolve <- function(K, ...) {
    inv <- K$getinverse()
    if(!is.null(inv)) {
      message("getting cached data.")
      return(inv)
    }
    foo <- K$get()
    inv <- solve(foo)
    K$setinverse(inv)
    inv
}

