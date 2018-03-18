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
REM del %1.acn
REM del %1.acr
REM del %1.alg
REM del %1*.aux
REM del %1*.bbl
REM del %1*.blg
REM del %1.glg
REM del %1.glo
REM del %1.gls
REM del %1.ist
REM del %1.lof
REM del %1.log
REM del %1.lop
REM del %1.lot
REM del %1.slg
REM del %1.syg
REM del %1.syi
REM del %1.toc
REM del %1.url
REM del %1.loalg
REM del btaux.aux
REM del btaux.bbl
REM del btaux.blg
REM del btbbl.aux
REM del btbbl.bbl
REM del btbbl.blg

