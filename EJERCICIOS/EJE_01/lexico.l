%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%

\( {return(APERTURA);}
\) {return(CIERRE);};

%%

int yywrap(){}
void main(){
    yyparse();
    yylex();
}