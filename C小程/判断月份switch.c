#include <stdio.h>
int main()
{
	int year,month;
	printf("输入年份和月份：");
	scanf("%d %d", &year, &month);
	switch (month)
	{
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			printf("31 days\n");
			break;
		case 2:
		if((year % 4== 0 && year % 100 != 0)||(year % 400 == 0))
			printf("29 days\n");
		else
			printf("28 days\n");
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			printf("30 days\n");
			break;
		default:
			printf("Input error!\n");
	}
	return 0;
}
