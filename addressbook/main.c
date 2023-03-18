#include "addressbook.h"
int main(int argc, char **argv)
{
	int cmd;
    for(;;){
		scanf("%d", &cmd);
		switch(cmd){
			case 0:
			find_rec();
			break;
			case 1:
			insert_rec();
			break;
			case 2:
			delete_rec();
			break;
			default:
			printf("Commands: 0 = Search, 1 = Insert, 2 = Delete \n");
		}
	}
}


