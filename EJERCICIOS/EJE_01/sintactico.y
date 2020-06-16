%{
    #include <stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token APERTURA
%token CIERRE

%%

parentesis: APERTURA CIERRE {printf("Parentesis reconocidos\n");}
;

%%

int yyerror(char*s){
    printf("%s \n", s);
    return 0;
}