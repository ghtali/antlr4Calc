# Antlr4Calculator
Using Antlr4 and Java to build a Calculator (Runs with -visitor) 

<h1>Syntax Guide</h1>

<b>Makefile</b> for people who like to work with editor and command line. It contains all necessary
compilation commands (you may need to adapt the path to ANTLR) you should be able
to compile everything with <b>make</b> and <b>make test</b> to run a sample input to the calculator.
Whenever you change anything, another <b>make</b> causes the re-compilation of only those files
that are affected by your changes.
<b>simpleCalc.g4</b> the ANTLR grammar. It should be run with ANTLR with the option
<b>-visitor</b> and this generates the files:
<ul>
<li>simpleCalcLexer.java (the lexer for the calculator)</li>
<li>simpleCalcParser.java (the parser for the calculator)</li>
<li>simpleCalcVisitor.java (this file defines an interface simpleCalcVisitor which is
the key to actually do something useful with a parse tree that the parser returns)</li>
</ul>
<b>main.java</b> The actual main program that reads an input file given as command line argument,
feeds it to the lexer and then to the parser. Finally, it implements the simpleCalcVisitor
interface in a class called Interpreter. This visits the parse tree to recursively compute a
result.
<b>simpleCalc_input.txt</b> A sample input to the program.

02332 Compiler Construction 
Credit:
<b>Sebastian Alexander Mödersheim</b>
