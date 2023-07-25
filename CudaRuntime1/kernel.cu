#include<stdio.h>
__global__ void hello_world(void)
{
	printf("GPU: Hello world!\n"); // GPU输出的Hello World!
}
int main(int argc, char** argv)
{
	printf("CPU: Hello world!\n"); // CPU输出的Hello World!
	hello_world << <1, 10 >> > ();
	cudaDeviceReset();             // 如果没有这一行就看不到GPU输出的Hello World!
	return 0;
}