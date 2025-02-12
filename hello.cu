//Just your regular Hello World file
// to be compiled with nvcc rather than gcc

#include <stdio.h>

__global__ void helloFromGPU(void) {
  printf("Hello World from GPU, thread %d of block %d \n",threadIdx.x,blockIdx.x);
}


int main(void) {
  printf("Hello World from CPU!\n");

  helloFromGPU<<<2, 7>>>();
  cudaDeviceReset();

  return 0;
}
