!/bin/bash
# Instalador de WAR-MACHINE version 1.0
#Author: Cha0smagick
#Forked from: https://github.com/abatsakidis/
$OLDPWD=pwd
DARKGRAY='\033[1;30m'
GREEN='\033[1;30m'
DEFAULT='\e[39m'
if [[ $EUID -eq 0 ]]; then
echo "NO CORRAS LA WAR MACHINE EN MODO ROOT" 1>&2
exit 1
fi
if [ ! -f /etc/network/if-up.d/ntpdate ] ; then
sudo ntpdate time.nist.gov
fi
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
clear
echo -n "Creando los directorios de war machine"
if [ ! -d /war-machine ] ; then
sudo mkdir /war-machine
sudo chown -R $USER /war-machine && chgrp -R $USER /war-machine
fi
[ ! -d /war-machine/temp ] && mkdir /war-machine/temp
[ ! -d /war-machine/backdoors ] && mkdir /war-machine/backdoors
[ ! -d /war-machine/wireless ] && mkdir /war-machine/wireless
[ ! -d /war-machine/exploits ] && mkdir /war-machine/exploits
[ ! -d /war-machine/exploits/exploitdb ] && mkdir /war-machine/exploits/exploitdb
[ ! -d /war-machine/web ] && mkdir /war-machine/web
[ ! -d /war-machine/scanners ] && mkdir /war-machine/scanners
[ ! -d /war-machine/misc ] && mkdir /war-machine/misc
[ ! -d /war-machine/enumeration ] && mkdir /war-machine/enumeration
[ ! -d /war-machine/voip ] && mkdir /war-machine/voip
[ ! -d /war-machine/database ] && mkdir /war-machine/database
[ ! -d /war-machine/passwords ] && mkdir /war-machine/passwords
[ ! -d /war-machine/fuzzers ] && mkdir /war-machine/fuzzers
[ ! -d /war-machine/spoofing ] && mkdir /war-machine/spoofing
[ ! -d /war-machine/cisco ] && mkdir /war-machine/cisco
[ ! -d /war-machine/tunneling ] && mkdir /war-machine/tunneling
[ ! -d /war-machine/audit ] && mkdir /war-machine/audit
if [ ! -d /war-machine/misc/va-pt ] ; then
cd $OLDPWD
echo "[Done]"
fi
clear
opcion=
until [ "$opcion" = "0" ]; do
     echo "WAR MACHINE V 1.0 "  
	 echo "Author: Cha0smagick"  
	 echo " twitch:https://www.twitch.tv/cha0smagick "
     echo -e ${GREEN}""
     echo "War machine Toolkit"
     echo ""
     echo "Seleccione un modulo:"
     echo "*****************************"
     echo "1 - Instalar dependencias previas necesarias"
     echo "2 - Instalar Toolkits para Integracion SVN"
     echo "3 - Instalar Software para manipulacion de codigo"
     echo "4 - Instalar herramientas de backdoors"
     echo "5 - Instalar - Actualizar los repositorios de vulnerabilidades"
     echo "6 - Instalar - actualizar los repositorios de listas de palabras"
     echo "7 - Actualizar los paquetes y herramientas"
     echo "8 - Instalar Nessus"
     echo ""
     echo "0 - Salir de War Machine"
     echo ""
     echo -n "Escoja una opcion: "
     read opcion
     echo ""
     case $opcion in
         1 ) $OLDPWD/scripts/dependencias.sh;;
         2 ) $OLDPWD/scripts/svn.sh;;
         3 ) $OLDPWD/scripts/static.sh;;
         4 ) $OLDPWD/scripts/backdoors.sh;; 
         5 ) $OLDPWD/scripts/exploits.sh;;
         6 ) $OLDPWD/scripts/diccionarios.sh;;
         7 ) $OLDPWD/scripts/actualizar-herramientas.sh;;
         8 ) $OLDPWD/scripts/nessus.sh;;
         0 ) exit;;
         * ) exit;;
     esac
done
