#include<stdio.h> 
main()
{  int a,b;
   printf("请输入六位数密码，按回车键确认") ;
   scanf("%d",&a) ;
   printf("请再次输入六位数密码") ;
   scanf("%d",&b) ;
   if(a=b) 
   printf("成功");
   else
   printf("失败");  
	
}
