#ifndef TEXT_H
#define TEXT_H

void flipStr(char str[]);
void printToWindow(char* str, int x, int y);
void printToConsole(char* str, int x, int y);
void (*print)(char* str, int x, int y);

#endif //TEXT_H