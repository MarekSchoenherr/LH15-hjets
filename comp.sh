file=hjetscomp_main
pdflatex -shell-escape $file.tex; bibtex $file; pdflatex -shell-escape $file.tex; pdflatex -shell-escape $file.tex;

