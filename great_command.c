#include<stdio.h> 
#include<stdlib.h>
int main(int argc,char *argv[])				 //command line argument
{ 
	int a,b; 
    	if(argc!=3) 					//checks if entered number is greater than 2
   	{
		printf("\nenter only two values"); 
		exit(1);
	}	
  	else
	{	
		a=atoi(argv[1]);
		b=atoi(argv[2]);	
		{
			if(a>b)
				printf("\n%d is greatest",a);
			else
				printf("\n%d is greatest",b);
    		}
	} 	
        return 0; 
} 


