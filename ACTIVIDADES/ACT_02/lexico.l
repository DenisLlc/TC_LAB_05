%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%

La {return(ARTICULOSIN);}
Las {return(ARTICULOPLU);}
flor|mariposa|abeja {return(SUJETOSIN);};
flores|mariposas|abejas {return(SUJETOPLU);};


%%
int yywrap(){}
void main(){
    yyparse();
    yylex();
}