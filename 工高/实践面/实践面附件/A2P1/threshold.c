#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/*请将下值自行替换为计算所得阈值、输入文件地址、输出文件地址，编译并运行即可*/
/*该问的实现方式不限，可自行求解也可对以下程序内容进行更改，但请在报告内说明*/
#define threshold -1
#define input_PATH "C:\\Users\\gonggao\\Desktop\\input.csv"
#define output_PATH "C:\\Users\\gonggao\\Desktop\\output.csv"

int main()
{
	double input[128][128];//输入矩阵 
	int output[128][128];//输出矩阵 
	int i,j;
	char buffer[10000];//存储读入结果 
	char *ptr_buffer,*ptr_input;
	const char s[2] = ",";//字符串分割符 
	FILE *fp = NULL;
	
	/* 读入数据 */
	if((fp = fopen(input_PATH, "r")) == NULL)
	{
	    printf("Fail to open file!");
	}
	else
	{
		for(i = 0; i < 128; i++)
		{
			fgets(buffer,10000,fp);
			ptr_buffer = buffer;
			for(j = 0; j<128; j++)
			{
				ptr_input = strtok(ptr_buffer, s);
				input[i][j] = atof(ptr_input);
				ptr_buffer += (strlen(ptr_input)+1);
			}
		}
		fclose(fp);
		fp = NULL;
	}
	
	/* 转换 */
	for(i = 0; i < 128; i++)
		for(j = 0; j < 128; j++)
			output[i][j]=(input[i][j]>=threshold)?1:0;

	/* 保存结果 */
	if((fp = fopen(output_PATH, "w")) == NULL)
	{
	    printf("Fail to open file!");
	}
	else
	{
		for(i = 0; i < 128; i++)
		{
			for(j = 0; j < 128; j++)
			{
				fprintf(fp,"%d",output[i][j]);
				if(j!=127) fprintf(fp,",");
			}
			fprintf(fp,"\n");
		}
		fclose(fp);
		fp = NULL;
		printf("Successfully convert!");
	}
	return 0;
}
