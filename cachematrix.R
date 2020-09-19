## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix consists of set, get, setinverse, getinverse
makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
  set = function(y){
    x <<- y
    ivs <<- NULL
  }
  get <-function(){x}     #function to get a matrix x
  setinverse <- function(inverse){ivs <<- inverse}
  getinverse <- function(){ivs} #function to inverse the matrix
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)

}


## this function is used to get cache

cacheSolve <- function(x, ...) {#get cache
        ivs <- x$getinverse()
  if(!is.null(ivs)){     #check if the inverse is NULL
    message("getting cached data")
    return(ivs)#return inverse value
  }
  data <x$get()
  inv<- solve(data,...)#calculate the inverse data
  x$setinverse(ivs)
  ivs
        ## Return a matrix that is the inverse of 'x'
}
