#include "text.h"

void flipStr(char str[]){
	int l = strlen(str);
	int halfLen = l/2;
	for(int i =0; i< halfLen; i++ ){
		char t = str[i];
		str[i] = str[l-i-1];
		str[l-i-1] = t;
	}
}

void printToWindow(char* str, int x, int y){
	renderText(str, x, y);
}

void printToConsole(char* str, int x, int y){
	printf("%s", str);
}

void (*print)(char* str, int x, int y) = printToConsole;
