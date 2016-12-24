## The following fucntions store the data of the matirx inverse inorder to retreive the data faster.
## makeCacheMatrix - creates the data in the cache and
## cacheSolve function helps in retreiving the data from the cache

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        #getting the data
        get <- function() {
                x
        }
        # Set the inverse of the dara
        setinverse <- function(solve){ 
                m <<- solve 
        }
        #Getting the inverse of the data
        getinverse <- function() {
                m
        }
        
        
        list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
        
        
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        
        if(!is.null(m)) {
                message("retreiving the data from cache")
                return(m)
        }
        #if the data is not in cache then create the inverse
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

