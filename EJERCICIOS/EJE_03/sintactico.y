%{
    #include <stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token DOSPUNTOS

%%

parentesis: DOSPUNTOS {printf("\nSe imprimió una linea\n");}
;

%%

int yyerror(char*s){
    printf("%s \n", s);
    return 0;
}