#include <stdio.h>

__global__ void olaMundo(void){
    printf("Ola GPU!\n");
}

int main(void) {
    printf("Ola CPU!\n");
    olaMundo <<<1,10>>>();
    cudaDeviceReset();
    return 0;
}