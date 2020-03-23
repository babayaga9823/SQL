%{
#include<stdio.h>
void yyerror();
%}
%token A B NL
%start stmt
%%
stmt : S NL {printf("valid\n");}
;
S : A S B
|
;
%%
void yyerror()
{
	printf("invalid\n");
}
int main()
{
	printf("Enter a string\n");
	yyparse();
	return 0;
}