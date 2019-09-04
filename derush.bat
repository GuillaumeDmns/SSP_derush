REM Script permettant la copie et le renommage des fichiers facilement.
REM Necessite le logiciel "Advanced Renamer" et le script de renommage SSP_renamer.aren

SET origine=%1
SET destination=%2
SET extentions=%3

IF EXIST %destination% GOTO :oef
MKDIR %destination%

FOR /R %origine% %%f IN (%extentions%) DO (
  ECHO Copie de %%f
  ROBOCOPY %%f %destination% * /S
)

REM Renommage des fichiers selon le nom du dossier parent
REM Utilisation du logiciel Advanced Renamer

arenc -e "SSP_renamer.aren" -p %destination%

pause
