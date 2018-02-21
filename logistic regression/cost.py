import numpy as np
def costFunction(theta, X, y):
	return ((-1/m)*(np.transpose(y)*log(sigmoid(X*theta))+np.transpose(1-y)*log(1-sigmoid(X*theta))), (1/m)*np.transpose(X)*(sigmoid(X*theta)-y))