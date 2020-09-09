import logging
import unittest
import numpy as np
from cython_example_proj import c_square, c_rms, c_rmse
print(c_square(10))
a= np.array([1,2,3,4,5]).astype('int32')
print('a:',a)
print(c_rms(a,5))
# b1=np.random.randint(100,size=5).astype('int32')
# b2=b1+np.random.randint(low=-10,high=10,size=5).astype('int32')
b1=a
b2=a*2
print('b1:',b1)
print('b2:',b2)
print(c_rmse(b1,b2,5))