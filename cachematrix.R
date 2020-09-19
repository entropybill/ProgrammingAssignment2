## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
  set = function(y){
    x <<- y
    ivs <<- NULL
  }
  get <-function(){x}
  setinverse <- function(inverse){ivs <<- inverse}
  getinverse <- function(){ivs}
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ivs <- x$getinverse()
  if(!is.null(ivs)){
    message("getting cached data")
    return(ivs)
  }
  data <x$get()
  inv<- solve(data,...)
  x$setinverse(ivs)
  ivs
        ## Return a matrix that is the inverse of 'x'
}
