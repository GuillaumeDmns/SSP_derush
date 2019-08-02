REM Script permettant la copie et le renommage des fichiers facilement.
REM Nécessite le logiciel "Advanced Renamer" et le script de renommage SSP_renamer.aren

SET origine=%1
SET destination=%2
SET extentions=%3

IF EXIST %destination% GOTO :oef

FOR /R %origine% %%f in (%extention%) do (
  ECHO Copie de %%f
  MOVE %%f %destination%
)

REM Renommage des fichiers selon le nom du dossier parent
REM Utilisation du logiciel Advanced Renamer

arenc -e "SSP_renamer.aren" -p %destination%

pause
