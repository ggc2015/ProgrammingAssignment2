## Caching the Inverse of a Matrix
##makeCacheMatrix <- function(x = matrix()) {}
## Write a short comment describing this function
## cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'}
######################################################

##Creates a matrix that can cache its inverse
makeCacheMatrix <- function() {
  values <- c(2,4,6,8,1,5,7,9,22,44,67,12,32,77,15,17)
  CacheMatrix <- matrix(values, ncol = 4)
  ## CacheMatrix test to verify data
  inverseMatrix <- solve(CacheMatrix)
  cachedMatrix <<- inverseMatrix
  cachedMatrix
}
makeCacheMatrix() 

## stores the cached matrix to another cached matrix used to test 
## for equality in the cacheSolve() function
storematrix <- function()
{
  x <- cachedMatrix
  storedM <<- x
}
storematrix()

############## Verify that it was cached (cachedMatrix) and copied (storedm)
cachedMatrix
storedM

##Checks to see if cached matrix exists
cacheSolve <- function(){
  for(i in seq_len(nrow(cachedMatrix))){
    for(j in seq_len(ncol(cachedMatrix))){
      ##if ((cachedMatrix[i, j]) == (cachedMatrix[i, j])){
      ##if ((cachedMatrix[i, j]) == (cachedMatrix[i, j])){
      if ((cachedMatrix[i, j]) == (storedM[i, j])){
        print(cachedMatrix[i, j])
      }
      if ((cachedMatrix[i, j]) != (storedM[i, j])){
        print("Doesn't Equal") 
        print(cachedMatrix[i, j])
      }

    }
  }
  
} 
cacheSolve()


## creates another cached matrix to compare
makeCacheMatrix2 <- function() {
  values <- c(45,4,6,8,33,5,7,9,22,44,67,12,32,77,15,117)
  CacheMatrix <- matrix(values, ncol = 4)
  ## CacheMatrix test to verify data
  inverseMatrix2 <- solve(CacheMatrix)
  cachedMatrix <<- inverseMatrix2
}
makeCacheMatrix2()


### 2nd test for equality
cacheSolve()


