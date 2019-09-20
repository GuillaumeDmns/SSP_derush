@ECHO off

REM Script permettant la copie et le renommage des fichiers facilement.
REM Necessite le logiciel "Advanced Renamer" et le script de renommage SSP_renamer.aren

SET origine=%1
SET destination=%2
SET extentionsBrutes=%3
SET extentions=%extentionsBrutes:~1,-1%
SET destinationExistante= Un dossier de destination avec ce nom existe déjà !

IF EXIST %destination% ECHO %destinationExistante%
IF EXIST %destination% GOTO :eof
MKDIR %destination%

FOR /R %origine% %%f IN (%extentions%) DO (
  ECHO Copie de %%f
  XCOPY %%f %destination% /q
)

REM Renommage des fichiers selon le nom du dossier parent
REM Utilisation du logiciel Advanced Renamer

SET PATH=%PATH%;C:\Program Files (x86)\Advanced Renamer
arenc -e "SSP_renamer.aren" -p %destination%

PAUSE
