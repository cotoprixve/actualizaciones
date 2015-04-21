#!/bin/bash
CAD="HOLA" 
echo $CAD  $USER
echo "Iniciando corrección de instalación virtual box"

# Actualiza el sistema y remueve paquetes no necesarios
update() {
	echo -e "\n********** ACTUALIZANDO EL SISTEMA **********\n"
	sudo apt-get install build-essential module-assistant
	echo -e "\n3. PREPARANDO EL SISTEMA...\n"
	sudo m-a prepare
	echo -e "7. COMPILANDO EL NÚCLEO DE VIRTUAL BOX...\n"
	sudo /etc/init.d/vboxdrv setup
}
sudo true
update
echo -e "********** ^^ LISTO ^^ **********"
