grammar simpleCalc;

/* A grammar for arithmetic expressions

Variables: start, expr
Terminals: EOF (end of file, a builtin symbol),
           '+', '*',  NUM, ID, and the ignored WHITESPACE

ANTLR Notation: 

Instead of the usual grammar notation
  Variable -> alpha_1 | ... | alpha_n
the ANTLR notation is
  Variable :  alpha_1 | ... | alpha_n ;

The labels like "#Addition" help later in processing the parse tree.

*/


start   : expr EOF ;

expr	: expr '+' expr # Addition
	| expr '*' expr # Multiplication
	| NUM  	        # Constant
	| ID            # Variable
	| '(' expr ')'  # Parenthesis
	;
	
NUM 	: ('0'..'9')+ ;
ID	: ('A'..'Z')+ ;
WHITESPACE : [ \n\t\r]+ -> skip;
