%{
    int num;
    int count = 0;
%}

%%
[0-9]* {
    num = atoi(yytext);
    for(int i = 2; i<= num;i++){
        if(num%i == 0)
            count++;
    }
    if(count == 1)
        printf("Prime");
    else 
        printf("Not prime");
    return 0;
}
%%
int yywrap(){return 1;}
int main(){
	yylex();
	return 0;
}