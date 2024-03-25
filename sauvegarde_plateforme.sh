#!/bin/bash

backup_files="Documents/Plateforme"

dest="Documents/Plateforme/sauvegarde"


day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

echo "sauvegarde de $backup_files dans $dest/$archive_file"
date
echo

tar czf $dest/$archive_file $backup_files

echo 
echo " sauvegarde terminé"
date 

ls -lh $dest
