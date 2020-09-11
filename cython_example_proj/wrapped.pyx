cimport cython
import numpy as np
cimport numpy as np
import ctypes
DTYPE = np.float
ctypedef np.float_t DTYPE_t

# This file shows 1 examples:
#   - Wrapping an external c function into python, "c_square"

cdef extern from "lib/cfunc.h":
    # Imports definitions from a c header file
    # Corresponding source file (cfunc.c) must be added to
    # the extension definition in setup.py for proper compiling & linking

    int square(int x)
    DTYPE_t rms(int* a, int n)
    DTYPE_t rmse(int* arr1, int* arr2, int n)
    void openmp_test()


def c_square(int x):
    # Exposes a c function to python
    return square(x)


def c_rms(int[:] arr,int n):
    # int[:] is a python object (a typed memory view) so it can be passed to a python function (def or cpdef).
    l = rms(&arr[0],n)
    return l


def c_rmse(int[:] arr1,int[:] arr2,int n):
    # int[:] is a python object (a typed memory view) so it can be passed to a python function (def or cpdef).
    l = rmse(&arr1[0],&arr2[0],n)
    return l

def c_openmp_test():
    openmp_test()