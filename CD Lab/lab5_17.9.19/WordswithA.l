%{
	#include<stdio.h>
    int c = 0;
%}
%%
[a-zA-Z]+ {
    if ((yytext[0] == 'a') || (yytext[0] == 'A')) { 
    printf(yytext);
    c++; 
  }
}
%%
int yywrap(){return 1;}
int main()
{
yylex(); 
printf("\nNo of words: %d", c);
return 0;
}