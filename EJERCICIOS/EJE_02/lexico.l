%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%

DO|RE|MI|FA|SOL|LA|SI {return(FORMA1);}
Do|Re|Mi|Fa|Sol|La|Si {return(FORMA2);}
do|re|mi|fa|sol|la|si {return(FORMA3);}

%%

int yywrap(){}
void main(){
    yyparse();
    yylex();
}