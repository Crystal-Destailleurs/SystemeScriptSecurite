#!/bin/bash

check_updates() {
	echo "recherche updates "
	sudo apt update
	sudo apt list --upgradable
}

update_packages() {
	echo" mise à jour en cours"
	sudo apt upgrade 
	echo " mise à jour effectué "
}

check_updates

read -p "voulez vous mettre à jour les logiciels ? (O/n) " answer
if [[ $answer =~ [Oo]$ ]]; then
	update_packages

else 
	echo " aucune mise à jour a était effectuée"
fi
