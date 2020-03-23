%{
    int num;
%}

%%
[0-9]* {
    num = atoi(yytext);
    if(num % 2 == 0)
        printf("Even");
    else 
        printf("Odd");
    return 0;
}
%%
int yywrap(){return 1;}
int main(){
	yylex();
	return 0;
}