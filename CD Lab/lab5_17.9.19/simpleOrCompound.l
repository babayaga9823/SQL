%{
	#include<stdio.h>
    int flag = 0;
%}
%%
[aA][nN][dD]|[oO][rR]|[bB][uU][tT] {flag=1;}
[.] {
    if(flag==1){
    printf("\nCompound Sentence");
    } else {
    printf("\nSimple Sentence");
    }
    flag=0;
}
. {continue;}
%%
int yywrap(){return 1;}
int main()
{
yylex();
return 0;
}