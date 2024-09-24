#!/bin/bash
# Instalador de WAR-MACHINE version 1.0
# Author: Cha0smagick
# Forked from: https://github.com/abatsakidis/

OLDPWD=$(pwd)
DARKGRAY='\033[1;30m'
GREEN='\033[1;32m'  # Cambié el color a verde claro para mejor legibilidad
DEFAULT='\e[39m'

# Verificar que no se ejecute como root
if [[ $EUID -eq 0 ]]; then
    echo "NO CORRAS LA WAR MACHINE EN MODO ROOT" 1>&2
    exit 1
fi

# Sincronizar hora si es necesario
if [ ! -f /etc/network/if-up.d/ntpdate ]; then
    sudo ntpdate time.nist.gov
fi

# Habilitar el reenvío de IP
sudo sysctl -w net.ipv4.ip_forward=1

# Crear directorios necesarios
clear
echo -n "Creando los directorios de War Machine..."
if [ ! -d /war-machine ]; then
    sudo mkdir /war-machine
    sudo chown -R $USER /war-machine && sudo chgrp -R $USER /war-machine
fi

# Listado de directorios a crear
dirs=("temp" "backdoors" "wireless" "exploits" "exploits/exploitdb" "web" "scanners" "misc" "enumeration" "voip" "database" "passwords" "fuzzers" "spoofing" "cisco" "tunneling" "audit")

# Crear todos los directorios en un bucle
for dir in "${dirs[@]}"; do
    [ ! -d "/war-machine/$dir" ] && mkdir -p "/war-machine/$dir"
done

echo "[Done]"
clear

# Función para mostrar el menú
function mostrar_menu {
    echo "WAR MACHINE V 1.0"
    echo "Author: Cha0smagick"
    echo "Twitch: https://www.twitch.tv/cha0smagick"
    echo -e "${GREEN}War Machine Toolkit${DEFAULT}"
    echo ""
    echo "Seleccione los módulos a instalar (separados por comas):"
    echo "*****************************"
    echo "1 - Instalar dependencias previas necesarias"
    echo "2 - Instalar Toolkits para Integración SVN"
    echo "3 - Instalar Software para manipulación de código"
    echo "4 - Instalar herramientas de backdoors"
    echo "5 - Instalar - Actualizar los repositorios de vulnerabilidades"
    echo "6 - Instalar - actualizar los repositorios de listas de palabras"
    echo "7 - Actualizar los paquetes y herramientas"
    echo "8 - Instalar Nessus"
    echo ""
    echo "0 - Salir de War Machine"
    echo ""
    echo -n "Escoja una opción (ejemplo: 1,2,3): "
}

# Bucle principal
while true; do
    mostrar_menu
    read -r opcion
    echo ""

    # Convertir opciones en un array
    IFS=',' read -r -a opciones_array <<< "$opcion"

    for opcion in "${opciones_array[@]}"; do
        case $opcion in
            1) $OLDPWD/scripts/dependencias.sh ;;
            2) $OLDPWD/scripts/svn.sh ;;
            3) $OLDPWD/scripts/static.sh ;;
            4) $OLDPWD/scripts/backdoors.sh ;;
            5) $OLDPWD/scripts/exploits.sh ;;
            6) $OLDPWD/scripts/diccionarios.sh ;;
            7) $OLDPWD/scripts/actualizar-herramientas.sh ;;
            8) $OLDPWD/scripts/nessus.sh ;;
            0) exit ;;
            *) echo "Opción inválida: $opcion" ;;
        esac
    done

    echo ""
done
