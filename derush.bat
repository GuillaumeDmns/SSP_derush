REM Script permettant la copie et le renommage des fichiers facilement.
REM Nécessite le logiciel "Advanced Renamer" et le script de renommage if_rename.aren

SET jour=Samedi

SET heure=1858
SET nom=GD

REM Localisation des disques

SET disk_derush=F:\
SET disk_backup=F:\backup

REM test pour être sur que l'on a pas déjà derush la carte SD

IF EXIST %disk_derush%\%jour%\%nom%\%heure% GOTO :oef


REM création des dossiers nécessaires correspondants au jour/nom/heure ci-dessus

mkdir %disk_derush%\%jour%\%nom%\%heure%
SET destination=%disk_derush%\%jour%\%nom%\%heure%
mkdir %destination%\old


REM copie dans un dossier temporaire

robocopy %CD% %destination%\old * /s


REM on remonte tous les fichiers qui nous intéressent

for /R %destination% %%f in (*.mp4 *.mov *.mts *.mp3 *.aac *.wav *.raf *.jpg *.rw2 *.mxf) do move %%f %destination%

ECHO %destination%
REM on supprime tout le reste

rmdir /S /Q %destination%\old


REM Copie de sauvegarde sur le disque de backup

robocopy %destination% %disk_backup%\%jour%\%nom%\%heure% * /S


REM Renommage des fichiers selon le nom du dossier parent
REM Utilisation du logiciel Advanced Renamer

SET PATH=%PATH%;C:\Program Files (x86)\Advanced Renamer
arenc -e "C:\Program Files (x86)\Advanced Renamer\BatchMethods\if_rename.aren" -p %destination%

REM mkdir %disk_derush%\%jour%\%nom%\%heure%\rushs_selectionnes
REM mkdir %disk_derush%\%jour%\%nom%\%heure%\rushs_poubelle


REM fin !

pause
