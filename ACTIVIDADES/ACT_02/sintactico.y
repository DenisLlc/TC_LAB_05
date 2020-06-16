%{
    #include <stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token ARTICULOSIN
%token ARTICULOPLU
%token SUJETOSIN
%token SUJETOPLU

%%

oracion: ARTICULOSIN SUJETOSIN {printf("Es una oracion\n");}
        |ARTICULOPLU SUJETOPLU {printf("Es una oracion\n");}
; 

%%
int yyerror(char*s){
    printf("%s \n", s);
    return 0;
}