In this repository I have implemented the code for KNN algorithm using R programming language from scratch.
KNN can be defined as a K-nearest neighbor algorithm. It is a supervised learning algorithm that can be used for both classification and regression tasks. It is the simplest algorithm that can be applied in machine learning, data analytics, and data science.KNN algorithm assigns labels to the testing data set based on the class labels of the training data set. It is a lazy learning algorithm because there is no learning that happens in the real sense.KNN algorithm can be applied to both categorical and numerical data.
Step by Step Process of KNN algorithm:

1. Input: Take training dataset, test data
2. Select the value of K (i.e., number of nearest neighbours to be considered).
3. Calculate the euclidean distance for every point from the test data point , where euclidean distance can be calculated by the formula ((x2-x1)2+(y2-y1)2)(1/2)
   Euclidean distance=√((x2-x1)^2+(y2-y1)^2 ).
4. Identify the K nearest training data points.
5. If k=1 assign the class label of test data point with the training data point class label.
   If k>1 assign the class label of test data point with the predominant class label of training data point.

Here the value of K for most cases is square root of the total number of observations.
