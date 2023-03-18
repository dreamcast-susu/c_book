#include "addressbook.h"
int find_rec()
{
	char msg_str[MSG_LEN];
	int i;
	printf("Enter names or student id or email address:");
	scanf("%s", msg_str);
	for(i = 0; i < num_record; i++){
		if (strcmp(names[i], msg_str)==0 || strcmp(student_id[i], msg_str) ==0 || strcmp(emails[i], msg_str) == 0)
				break;
	}
	if (i < num_record)
		print_onerow(i);
	else
		printf("No such record!\n");
	printf("\n");
	return 0;
}
