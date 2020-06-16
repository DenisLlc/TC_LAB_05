%{
    #include <stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token ARTICULO
%token SUJETO
%token VERBO

%%

oracion: ARTICULO SUJETO VERBO {printf("Es una oracion\n");}
; 

%%
int yyerror(char*s){
    printf("%s \n", s);
    return 1;
}