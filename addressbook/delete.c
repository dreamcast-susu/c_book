#include "addressbook.h"
int delete_rec()
{
	int i, index;
	if (num_record == 0){
		printf("No item in the address book!\n");
		return -1;
	}
	do{
		printf("Enter index of record to be deleted (0-%d):", num_record-1);
		scanf("%d", &index);
	}while(index < 0 && index >= num_record);
	for(i = index; i < num_record; i++){
		strcpy(names[i],names[i+1]);
		strcpy(student_id[i], student_id[i+1]);
		strcpy(emails[i], emails[i+1]);
	}
	printf("Delete successful!\n\n");
	--num_record;
	return 0;
}
