%{
	#include<stdio.h>
    int max = 0;
%}
%%
[a-zA-Z]+ {
    if (yyleng > max) { 
    max = yyleng; 
  }
}
%%
int yywrap(){return 1;}
int main()
{
yylex();
printf("\nLongest Word: %d", max); 
return 0;
}