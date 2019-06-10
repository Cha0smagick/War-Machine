echo -n "Instalando dependencias necesarias..."
rm -rf /var/lib/dpkg/lock
echo -n "Instalando Wine"
sudo apt-get install -y wine wine-dev mysql-server mysql-client subversion git ncftp rar p7zip-full iw ethtool dos2unix gtk-recordmydesktop postgresql > /dev/null 2>&1
echo -n "Instalando SQLite"
sudo apt-get install -y sqlite3 nbtscan dsniff uClibc++ libncurses-dev libpcap-dev libnl-dev libssl-dev hping3 openssh-server> /dev/null 2>&1
echo -n "Instalando Python"
sudo apt-get intsall -y python2.6-dev autoconf open-iscsi open-iscsi-utils virtualbox-ose virtualbox-guest-additions wireshark chntpw > /dev/null 2>&1
echo -n "Instalando Instalando Webtrack"
sudo apt-get install -y webhttrack httrack finger rusers snmp reglookup gpsd gpsd-dbg libgps-dev apache2 libapache2-mod-auth-mysql > /dev/null 2>&1
echo -n "Instalando Php 5"
sudo apt-get install -y php5-mysql libapache2-mod-php5 curl sslscan ruby rubygems libpq-dev libxml2-dev vim python-setuptools > /dev/null 2>&1
sudo apt-get install -y python-nltk python-soappy python-lxml python-svn python-scapy gtk2-engines-pixbuf graphviz python-gtksourceview2 > /dev/null 2>&1
echo -n "Instalando Librerias necesarias"
sudo apt-get install -y libssh-dev libmysqlclient-dev libpcre3-dev Firebird2.1-dev libsvn-dev libncp-dev libidn11-dev libcurl4-gnutls-dev > /dev/null 2>&1
sudo apt-get install -y libopenssl-ruby libxslt1-dev ruby-dev sipcrack libgmp3-dev python-mysqldb libnet1-dev flasm registry-tools > /dev/null 2>&1
sudo apt-get install -y libavahi-compat-libdnssd-dev gip ldap-utils bkhive ophcrack macchanger-gtk cdpr flamerobin dsniff sipsak > /dev/null 2>&1
sudo apt-get install -y ddrescue ike-scan nfs-common httping ptunnel recover recoverdm extundelete ext3grep libaspell-dev autoconf > /dev/null 2>&1
sudo apt-get install -y libyaml-dev openjdk-7-jre openjdk-7-jre-lib libreadline-dev python2.7-dev python-pip python-beautifulsoup tshark > /dev/null 2>&1
echo -n "Instalando OPEN-Vas"
sudo apt-get install -y openvas-server openvas-client samba libpam-smbpass > /dev/null 2>&1
sudo apt-get install -y git-core rubygems build-essential subversion > /dev/null 2>&1
sudo pip install-y pyaml > /dev/null 2>&1
sudo apt-get install -y python-pcapy > /dev/null 2>&1
echo -n "Instalando Scapy"
sudo wget http://scapy.net/ > /dev/null 2>&1
mv index.html scapy.zip > /dev/null 2>&1
unzip scapy.zip > /dev/null 2>&1
rm -rf scapy.zip
cd scapy-2.2.0
python setup.py install > /dev/null 2>&1
cd ..
rm -rf > /dev/null 2>&1
echo -e "\e[93m[Done]\e[94m"