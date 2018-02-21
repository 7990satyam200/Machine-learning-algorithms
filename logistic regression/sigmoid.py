import numpy as np
def sigmoid(z):
	g=np.zeros(np.size(z))

	g=1/(1+np.power(np.e, -z))
    return g