%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%
El {return(ARTICULO);}
alumno {return(SUJETO);}
estudia {return(VERBO);}

%%
int yywrap(){}
void main(){
    yyparse();
    yylex();
}