%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%

\: {return(DOSPUNTOS);}

%%

int yywrap(){}
void main(){
    yyparse();
    yylex();
}