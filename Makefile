
latex-merge: lex.yy.c Makefile
	gcc -O3 -o latex-merge lex.yy.c -ll

lex.yy.c: latex-merge.l Makefile
	flex latex-merge.l

clean:
	rm -f lex.yy.c latex-merge
