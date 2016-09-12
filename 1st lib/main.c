#include <stdio.h>
#include "first_lib.h"
#include "second_lib.h"

int main(){
	char str[50];
	getHelloMessage(str);
	printf("%s\n", str);
	getGoodbyeMessage(str);
	printf("%s\n", str);
   	return 0;
}
