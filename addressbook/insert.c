#include "addressbook.h"
int insert_rec()
{
	char msg_str[MSG_LEN];
	int i;
	if (num_record == MAX_RECORD){
		printf("-- No space left --\n");
		return 1;
	}
	printf("Enter name:");
	scanf("%s",msg_str);
	strcpy(names[num_record],msg_str);
	printf("Enter student id: ");
	scanf("%s", msg_str);
	strcpy(student_id[num_record], msg_str);
	printf("%s", msg_str);
	strcpy(emails[num_record], msg_str);
	num_record++;
	printf("Insert successful~\n\n");
	return 0;
}
