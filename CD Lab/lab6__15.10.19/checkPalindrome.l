%{
    int i,j,f; 
%}

%%
[a-zA-Z]* {
  for (i=0,j = yyleng-1; i<=j; i++, j--) { 
        if (yytext[i] == yytext[j]) { 
            f = 1; 
        } 
        else { 
            f = 0; 
            break; 
        } 
    } 
    if (f == 1) 
        printf("Palindrome"); 
    else
        printf("Not Palindrome");   
    
    return 0;
}
%%
int yywrap(){return 1;}
int main(){
	yylex();
	return 0;
}