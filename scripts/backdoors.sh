echo "El paquete de instalacion de Software con relacion a : Backdoors esta incializandose"
echo ""
echo " instalando Weebly..."
if [ ! -d /war-machine/backdoors/weevely ] ; then
echo -n "Clonando desde github e instalando..."
cd /war-machine/backdoors/ && git clone https://github.com/epinna/Weevely Weevely > /dev/null 2>&1 
echo -e "\e[96m[Listo!]\e[97m"
fi

echo "Instalando Cymothoa..."
if [ ! -d /war-machine/backdoors/cymothoa ] ; then
echo -n "Clonando desde  sourceforge e instalando..."
cd /war-machine/backdoors/ && wget "https://downloads.sourceforge.net/project/cymothoa/cymothoa-1-beta/cymothoa-1-beta.tar.gz" > /dev/null 2>&1
tar xfvz  cymothoa-1-beta.tar.gz > /dev/null 2>&1
rm -rf cymothoa-1-beta.tar.gz 
mv cymothoa-1-beta cymothoa
cd cymothoa 
make  > /dev/null 2>&1
echo -e "\e[96m[Listo!]\e[97m"
fi

echo "Instalando OpenSSH"
if [ ! -d /war-machine/backdoors/openssh/openssh6.7p1 ] ; then
echo -n "Clonando desde packetstormsecurity e instalando..."
mkdir /war-machine/backdoors/openssh/
cd /war-machine/backdoors/openssh/ && wget http://dl.packetstormsecurity.net/UNIX/penetration/rootkits/bl0wsshd00r67p1.tar.gz > /dev/null 2>&1
tar xfvz bl0wsshd00r67p1.tar.gz > /dev/null 2>&1
rm -rf bl0wsshd00r67p1.tar.gz 
mv bl0wsshd00r67p1 openssh6.7p1
cd openssh6.7p1
chmod +x setup.sh
echo -e "\e[96m[Listo!]\e[97m"
fi


echo ""
echo "Instalado el Software de Backdoor. Enjoy!"