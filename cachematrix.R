## caching the inverse of the function:
## matrix inversion is a costly compuation and there maybe be some 
## benefit to caching the inverse of the matrix rather than compute
## it repeatedly.
## below are two functions that are used to create a object that 
## stores a matrix and caches it's inverse.


## this function creates a special matrix that can cache it's inverse. 

makeCacheMatrix <- function(x = matrix()) {
	invrse <- function(y){
		x <<- y
		invrse <<- NULL 
	}
	get <- function() x
	setInvrse <- function(inverse) invrse <<- inverse
	getInvrse <- function() invrse
	List( set = set,
	      get = get,
	      setInvrse = setInvrse,
	      getInvrse = getInvrse
	      ) 

}


## this function computes the inverse of the matix created by
## makeCacheMatrix above. If the inverse has lready been calculated
## (and the matrix has not changed)then it should retrieve the 
## inverse  from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
         invrse <- x$getInvrse()
         if (!is.null(invrse)) {
         	message("getting cached data!")
         	return(invrse)
         }
         matrx <- x$get()
         invrse <- solve(matrx , ...)
         x$setInvrse(invrse)
         invrse
          }
