## cachematrix.R for programming assignment for Coursera
## In this file, we have a pair of functions that cache the inverse of a matrix 
## Below are two functions that are used to create a special object that stores a matrix vector and caches its inverse

## Create a cacheMatrix object for an invertale matrix.

makeCacheMatrix <- function(x = matrix()) {
	cacheInverseMatrix <- NULL
	set <- function(y) {
		x <<- y
		cacheInverseMatrix <<- NULL
	}
	get <- function() x
	setInverseMatrix <- function(inverse) cachedInverse <<- inverse
	getInverseMatrix <- function() cacheInverseMatrix
	list(set = set,get = get,setInverseMatrix = setInverseMatrix,getInverseMatrix = getInverseMatrix)
}


## Return the inverse of an cacheMatrix object

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	cacheInverseMatrix <- x$getInverse()
	if(!is.null(cacheInverseMatrix)) {
		message("getting cached data")
		return(cacheInverseMatrix)
	}
	data <- x$get()
	cacheInverseMatrix <- solve(data, ...)
	x$setInverse(cacheInverseMatrix)
	cacheInverseMatrix
}



