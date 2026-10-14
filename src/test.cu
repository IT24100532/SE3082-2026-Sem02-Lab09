#include <cstdio>
// __global__ marks a kernel: runs on GPU,
// called from the CPU, must return void.
__global__ void helloFromGPU() {
    printf("Hello from GPU thread %d in block %d\n",
           threadIdx.x, blockIdx.x);
}
int main() {
    printf("Hello from the CPU\n");
    // 2 blocks of 4 threads = 8 GPU threads
    helloFromGPU<<<2, 4>>>();
    cudaDeviceSynchronize();   // wait for GPU
    return 0;
}

