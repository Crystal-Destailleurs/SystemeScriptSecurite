#!/bin/bash
is_package_installed() {
	dpkg -l "$1" &> /dev/null
}
dl_apache() {
if ! is_package_installed apache; then

	sudo apt-get install apache2
else 
	echo" apache est déjà installé"
fi
}

dl_php() {
if ! is_package_installed phpmyadmin; then
	sudo apt-get install phpmyadmin
else 
	echo " php est déjà installé"
fi
}

dl_my_sql() {
if ! is_package_installed mysql; then
	sudo apt-get install myslq-server
else
	echo "mysql est déjà installé"
fi
}

dl_nodejs() {
if ! is_package_installed nodejs; then

	sudo apt-get install nodejs 
else
	echo " nodejs est déjà installé"
fi
}

dl_git() {
if ! is_package_installed git; then
	echo " installation de git"
	sudo apt install git
else
	echo " git est déjà installé"
fi
}

dl_apache
dl_php
dl_my_sql
dl_nodejs
dl_git
