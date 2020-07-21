## Put comments here that give an overall description of what your
## functions do
##Below are two functions that are used to create a special object 
##that stores a matrix and caches its inverse
## Write a short comment describing this function
##in this function, a matrix m is created and the function basically 
##sets value of matrix and gets it similarly sets value of inverse and gets it. 
##initially values are set as null
makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function
## this function is the one that does the computaton. 
##it first checks if the inverse is already computed, 
##if so then gets that value and ditches the entire 
##computation process. but if inverse hasn't been
##calculated then it calculates it through the 
##setInverse fuction
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getInverse()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m        
}
