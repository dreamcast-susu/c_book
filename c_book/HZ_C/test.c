#include<stdio.h>
void debug()
{
	printf("this is debug function\n");
}

void debug1()
{
	printf("this is debug1 function\n");
}

int main()
{
	int i,j=0;
	debug();
	for(i=0;i<10;i++){
		j+=10;
		printf("now j=%d\n",j);
	}
    debug1();
	return 0;
}
