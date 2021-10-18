/*#include <stdio.h>
#include <stdlib.h>
int main()
{
	FILE *fp;
	int i;
	struct student
	{
		double a[2];double b[2];
	}stu;

	if((fp=fopen("dataIn.txt","rb"))==NULL)
	{
		printf("不能打开文件");
		exit(0);
	}
	printf("读取文件的内容如下:\n");
	for (i = 0; i < 1; i++)
	{
		fread(&stu,sizeof(stu),1,fp);
		printf("%f %f %f %f\n",stu.a[0],stu.a[1],stu.b[0],stu.b[1]);
	}
	fclose(fp);
 
	return 0;
}*/

#include<iostream>
#include<string>
#include "fstream"
#include<cmath>
#include<cctype>

using namespace std;

double joints[4];
    string label_file = "/home/guo/my_bag/readtxt/src/dataIn.txt";
    std::ifstream labels(label_file.c_str());
    
int main(){

    if(!labels.is_open()){
        cout<<"Can't open the label file!"<<endl;
        return -1;
    }
    string str;
    while(std::getline(labels, str)){//getline每调用一次就自动换到下一行
	int j=0;
        cout<<str<<endl;
	int length = str.size();
	for (int i = length - 1; i >= 0; i--) {
		if (isdigit(str[i])) {
			double sum = 0;
			double number = 0;
			double key = 1.0;
			while (isdigit(str[i])) {
			sum += ((str[i] - 48) * key);
			key *= 10;
			number++;
			i--;
			}
			if (str[i] == '.' && str[i-2] == '-') {
				sum /= pow(10.0, number);
				key = 1.0;
				i--;
				while (isdigit(str[i])) {
					sum += (key * (str[i] - 48));
					key *= 10;
					i--;
				}
				joints[j] = -sum;
				j++;
				cout << sum <<"  "<<j-1<<"  "<<joints[j-1]<< endl;
				
			} 
			else if (str[i] == '.' && str[i-2] != '-') {
				sum /= pow(10.0, number);
				key = 1.0;
				i--;
				while (isdigit(str[i])) {
					sum += (key * (str[i] - 48));
					key *= 10;
					i--;
				}
				joints[j] = sum;
				j++;
				cout << sum <<"  "<<j-1<<"  "<<joints[j-1]<< endl;
				
			} 
			else 
			{
				cout << sum << endl; 
				cout << "fgadgadfgadg" << endl;
			}
		}
      } //end for

	j=0;
    } //end while
    return 0;
}//end main

