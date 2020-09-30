cimport cython
import numpy as np
import ctypes
from numpy import int32, float
from numpy cimport int32_t, float_t

cdef extern from "lib/cfunc.h":
    # Imports definitions from a c header file
    # Corresponding source file (cfunc.c) must be added to
    # the extension definition in setup.py for proper compiling & linking

    int square(int x)
    float_t rms(int* a, int n)
    float_t rms_2D(int* a, int n)
    float_t rmse(int* arr1, int* arr2, int n)
    void openmp_test()