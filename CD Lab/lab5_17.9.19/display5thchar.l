%{
	#include<stdio.h>
    int max = 0;
%}
%%
[a-u] {printf("%c", yytext[0]+5);}
[v-z] {printf("%c", yytext[0]-21);}
[A-U] {printf("%c", yytext[0]+5);}
[V-Z] {printf("%c", yytext[0]-21);}
%%
int yywrap(){return 1;}
int main()
{
yylex();
return 0;
}