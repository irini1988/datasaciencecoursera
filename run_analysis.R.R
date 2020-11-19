## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a matrix object that can cache its inverse

makeCacheMatrix <- function(m = matrix()) {
i<-NULL
##set the matrix
set<-function(matrix){
  m<<-matrix
  i<<-NULL
}
##get the matrix
get<-function(){
  m
}
##set the inverse of the matrix
setInverse<-function(inverse){
  i<<-inverse
}
##get the inverse of the matrix
getInverse<-function(){
  i
}
##return the list of mothods
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}
  

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  ##return the inverse if having set
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  ##get the matrix from the object
  data<x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}

