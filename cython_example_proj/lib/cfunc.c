#include <stdio.h>
#include <math.h>
#include <omp.h>
int square(int x)
{
    return x*x;
}
float rms(int* arr, int n) 
{ 
    int square = 0; 
    float mean = 0.0, root = 0.0; 
  
    // Calculate square. 
    int i;
    for (i = 0; i < n; i++) { 
        square += arr[i]*arr[i]; 
    } 
  
    // Calculate Mean. 
    mean = (square / (float)(n)); 
  
    // Calculate Root. 
    root = sqrt(mean); 
  
    return root; 
} 

float rmse(int* arr1, int* arr2, int n)
{
    int arrt[n];
    int i;
    for (i=0; i<n; i++)
        arrt[i]=arr1[i]-arr2[i];
    return rms(arrt,n);
}

void openmp_test(){
    omp_set_dynamic(0);     // Explicitly disable dynamic teams
    omp_set_num_threads(4); // Use 4 threads for all consecutive parallel regions
    #pragma omp parallel
    {
        printf("Hello from process: %d\n", omp_get_thread_num());
    }
}
    