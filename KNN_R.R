#function for calculating the euclidean distance
euclideanDistance=function(x,y){
  #checking whether x and y have same number of observation
  if(length(x)==length(y))
  {
    sqrt(sum((x-y)^2))
  }
  else
  {
    stop('X and Y shouls have same variable numbers')
  }
}

#function to find the K nearest neighbours
nearestNeighbours=function(trainData,testData,k,funct,s=NULL)
{
  #checking whether the observations are same or not
  if(ncol(trainData)!=ncol(testData))
  {
    stop('data should be same') 
  }
  if(is.null(s))
  {
    distance=apply(trainData,1,funct,testData) 
  }
  else
  {
    distance=apply(trainData,1,funct,testData,s)
  }
  
  #getting closest neighbours
  distances=sort(distance)[1:k]
  neighbour_res=which(distance %in% sort(distance)[1:k])
  
  if(length(neighbour_res)!=k)
  {
    warning
    (
      paste('Many variables have same length')
    )
  }
  result=list(neighbour_res,distances)
  return(result)
}

#Accessing the data
dataFrame=read.csv("diabetes.csv")
#creating train data
trainData=dataFrame[1:nrow(dataFrame)-1,]
#creating test data
testData=dataFrame[nrow(dataFrame),]
#calling nearestNeaighbour function
res=nearestNeighbours(trainData[,1:8],testData[,1:8],28,euclideanDistance)[[1]]
as.matrix(trainData[res,1:8])
#creating a prediction function
knnPrediction=function(trainData, varible)
{
  interData=table(trainData[,varible])
  predicted=interData[interData==max(interData)]
  return(predicted)
}
#calling knnPrection () function
knnPrediction(trainData[res,],'Outcome')
