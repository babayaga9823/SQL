%{ 

#include<stdio.h> 
#include<stdlib.h> 
%} 

%token A B NL 


%% 
stmt: A A A S B B NL {printf("valid string\n"); 
			exit(0);} 
; 
S: S A 
| 
; 
%% 

int yyerror(char *msg) 
{ 
printf("invalid string\n"); 
exit(0); 
} 


//driver code 
main() 
{ 
printf("enter the string\n"); 
yyparse(); 
} 
