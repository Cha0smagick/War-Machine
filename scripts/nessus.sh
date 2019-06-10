#if [ ! -d /war-machine/scanners/nessus ] ; then
echo "Installing Nessus Scanner..."
mkdir /war-machine/scanners/nessus
echo -ne "por favor, teclee la dirección del archivo .deb de Nessus (ej. /root/Nessus-4.11.3-ubuntu912_i386.deb) :"
read nessus
cp $nessus /war-machine/scanners/nessus/ 
cd /war-machine/scanners/nessus
sudo dpkg -i Nessus*  > /dev/null 2>&1
echo ""
echo -e "Ahora, puede iniciar nessus tecleando en consola /etc/init.d/nessusd start"
echo -e "Luego, ve a https://localhost:8834/ en tu navegador para configurar el scanner"

echo -e "Nessus Instalado Exitosamente"