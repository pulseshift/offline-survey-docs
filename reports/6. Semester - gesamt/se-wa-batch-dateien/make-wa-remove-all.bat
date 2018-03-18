@echo off
echo Uebersetzung einer tex-datei
echo Parameter: Name der tex-datei OHNE die Endung .tex
pdflatex -draftmode %1.tex
REM 2013-07-21 Integration von bibtopic
REM bibtex %1
for %%f in ("*.aux") do ( 
bibtex "%%f"
)
makeindex -s %1.ist -t %1.alg -o %1.acr %1.acn
makeindex -s %1.ist -t %1.glg -o %1.gls %1.glo
makeindex -s %1.ist -t %1.slg -o %1.syi %1.syg
pdflatex -draftmode %1.tex
pdflatex -draftmode %1.tex
pdflatex %1.tex
del %1.acn
del %1.acr
del %1.alg
del %1*.aux
del %1*.bbl
del %1*.blg
del %1.glg
del %1.glo
del %1.gls
del %1.ist
del %1.lof
del %1.log
del %1.lop
del %1.lot
del %1.slg
del %1.syg
del %1.syi
del %1.toc
del %1.url
del %1.loalg
del btaux.aux
del btaux.bbl
del btaux.blg
del btbbl.aux
del btbbl.bbl
del btbbl.blg

