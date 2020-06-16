%{
    #include <stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token FORMA1
%token FORMA2
%token FORMA3

%%

parentesis: FORMA1 FORMA1 FORMA1 FORMA1 FORMA1 {printf("Combinación aceptada\n");}
            |FORMA2 FORMA2 FORMA2 FORMA2 FORMA2 {printf("Combinación aceptada\n");}
            |FORMA3 FORMA3 FORMA3 FORMA3 FORMA3 {printf("Combinación aceptada\n");}
;

%%

int yyerror(char*s){
    printf("%s \n", s);
    return 0;
}