#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_RECORD 35
#define MSG_LEN 20
char names[MAX_RECORD][MSG_LEN], student_id[MAX_RECORD][MSG_LEN], emails[MAX_RECORD][MSG_LEN];
int num_record;
void print_onerow(int index);
void print_all();
int find_rec();
int insert_rec();
int delete_rec();


