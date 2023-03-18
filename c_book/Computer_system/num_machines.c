#include <stdio.h>

int main(void)
{
	int x=9,y=-6,z1,z2;
	int *x_p,*y_p;
	z1=x+y;
	z2=x-y;
	printf("the x is:%d\n",x);
	printf("the y is:%d\n",y);
	printf("the x+y is:%d\n",z1);
	printf("the x-y is:%d\n",z2);
	printf("the &x_p:%p\n",&x);
	return 0;
}
	
