#!/bin/bash

sudo apt-get update

sudo apt-get install -y apache2

sudo dpkg --configure -a

# ruta raíz del servidor web
APACHE_ROOT="/var/www"

# ruta de la aplicación
APP_PATH="$APACHE_ROOT/utn-devops-app"

#Ruta para el log del apache
APACHE_LOG_DIR="/tmp/log"

sudo service apache2 start

## configuración servidor web
#copio el archivo de configuración del repositorio en la configuración del servidor web
if [ -f "/tmp/devops.site.conf" ]; then
	echo "Copio el archivo de configuracion de apache"
	sudo mv /tmp/devops.site.conf /etc/apache2/sites-available
	#activo el nuevo sitio web
	sudo a2ensite devops.site.conf
	#desactivo el default
	sudo a2dissite 000-default.conf
	#refresco el servicio del servidor web para que tome la nueva configuración
	sudo service apache2 reload
fi
	
## aplicación

# descargo la app del repositorio
if [ ! -d "$APP_PATH" ]; then
	echo "clono el repositorio"
	cd $APACHE_ROOT
	sudo git clone https://github.com/Fichen/utn-devops-app.git
	cd $APP_PATH
	sudo git checkout unidad-1
fi