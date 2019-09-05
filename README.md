# SSP_derush
Automatisation du derush de fichiers vidéos et audio, adaptés pour projets audiovisuels de l'association [Sous-Sol Productions](http://www.assos.utc.fr/ssp)

## Parameters
Le script doit être appelé avec les trois éléments suivants :
 * origine : lien vers la racine du **dossier/dispotif** où se trouvent les fichiers à copier,
 * destination : lien vers le **dossier** de destination où seront copiés les fichiers. **Ce dossier ne doit pas exister**,
 * extentionsBrutes : liste des extentions de fichiers à prendre en compte pour la copie, *séparées chacune par un espace, le tout entre quotes*.

## Exemple d'utilisation
`derush.bat D:\Users\guillaume\Desktop\origine\ D:\Users\guillaume\Desktop\destination\ "*.mp4 *.avi *.mxf"`
