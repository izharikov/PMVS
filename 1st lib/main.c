#include <stdio.h>

int main(){
	char str[50];
	getHelloMessage(str);
	printf("%s\n", str);
	getGoodbyeMessage(str);
	printf("%s\n", str);
   	return 0;
}
