echo "comenzando el proceso de instalación"

if [ ! -d /war-machine/passwords/johnyy ] ; then
echo -n "Johnyy"
mkdir /war-machine/passwords/johnyy
cd /war-machine/passwords/johnyy && wget http://openwall.info/wiki/_media/john/johnny_1.1.3_i386.deb > /dev/null 2>&1 
sudo dpkg -i  johnny_1.1.3_i386.deb > /dev/null 2>&1 
 
fi




if [ ! -d /war-machine/web/dirbuster ] ; then
echo -n "DirBuster"
cd /war-machine/web/ && wget "http://downloads.sourceforge.net/project/dirbuster/DirBuster%20%28jar%20%2B%20lists%29/1.0-RC1/DirBuster-1.0-RC1.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fdirbuster%2Ffiles%2FDirBuster%2520%2528jar%2520%252B%2520lists%2529%2F1.0-RC1%2F&ts=1370262745&use_mirror=nchc" -O DirBuster-1.0-RC1.tar.bz2 > /dev/null 2>&1
bunzip2 DirBuster-1.0-RC1.tar.bz2 > /dev/null 2>&1 
tar xvf DirBuster-1.0-RC1.tar > /dev/null 2>&1 && rm -rf DirBuster-1.0-RC1.tar
mv DirBuster-1.0-RC1 dirbuster
 
fi

echo -n "   SSL Strip "
sudo apt-get install sslstrip > /dev/null 2>&1
 


if [ ! -d /war-machine/web/websploit ] ; then
echo -n "   Websploit "
cd /war-machine/web/ && wget http://downloads.sourceforge.net/project/websploit/WebSploit%20Framework%20V.3.0.0/WebSploit-Framework-3.0.0.tar.gz > /dev/null 2>&1
tar zxvf WebSploit-Framework-3.0.0.tar.gz > /dev/null 2>&1 && rm -rf WebSploit-Framework-3.0.0.tar.gz 
cd websploit
sudo cp wsf-300.tar.gz /usr/share
cd /usr/share
sudo tar -xf wsf-300.tar.gz > /dev/null 2>&1
sudo chmod 755 /usr/share/websploit/*
sudo chmod 755 /usr/share/websploit/modules*
sudo chmod 755 /usr/share/websploit/modules/fakeupdate/*
sudo chmod 755 /usr/share/websploit/core/*
sudo ln -s /usr/share/websploit/websploit /usr/bin/websploit
sudo rm -rf /usr/share/wsf-300.tar.gz
 
fi




if [ ! -d /war-machine/scanners/webshag ] ; then
echo -n "   Webshag "
mkdir /war-machine/scanners/webshag
cd /war-machine/scanners/webshag && wget http://www.scrt.ch/outils/webshag/ws110.tar.gz > /dev/null 2>&1
tar zxvf ws110.tar.gz > /dev/null 2>&1 && rm -rf ws110.tar.gz
 
fi



if [ ! -d /war-machine/scanners/snmp ] ; then
echo -n "   OneSixtyOne & snmpcheck "
mkdir /war-machine/scanners/snmp
cd /war-machine/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/onesixtyone-0.3.tar.gz > /dev/null 2>&1
tar zxvf onesixtyone-0.3.tar.gz > /dev/null 2>&1 && rm -rf onesixtyone-0.3.tar.gz
mv onesixtyone-0.3/ /war-machine/scanners/snmp/onesixtyone
cd /war-machine/scanners/snmp/onesixtyone && gcc -o onesixtyone onesixtyone.c > /dev/null 2>&1
cd /war-machine/scanners/snmp && wget http://www.nothink.org/perl/snmpcheck/downloads/snmpcheck-1.8.pl -O snmpcheck.pl > /dev/null 2>&1
chmod 700 /war-machine/scanners/snmp/snmpcheck.pl
 
fi


if [ ! -f /war-machine/cisco/copy-router-config.pl ] ; then
cd /war-machine/cisco && wget http://littlehacker.persiangig.com/cisco/copy-router-config.pl > /dev/null 2>&1
chmod 755 copy-router-config.pl
fi
 

if [ ! -d /war-machine/voip/sipvicious ] ; then
echo -n "   SIPVicious "
cd /war-machine/temp && wget http://dl.packetstormsecurity.net/sip/sipvicious-0.2.6.tar.gz > /dev/null 2>&1
tar zxvf sipvicious-0.2.6.tar.gz > /dev/null 2>&1 && rm -rf sipvicious-0.2.6.tar.gz
mv sipvicious/ /war-machine/voip/ && cd /war-machine/voip/sipvicious
 
fi


if [ ! -d /war-machine/enumeration/hydra ] ; then
echo -n "   THC Hydra "
cd /war-machine/temp && wget https://www.thc.org/download.php?t=r&f=hydra-8.5.tar.gz > /dev/null 2>&1
tar zxvf hydra-8.5.tar.gz > /dev/null 2>&1 && rm -rf hydra-8.5.tar.gz
mv hydra-8.5 /war-machine/enumeration/hydra && cd /war-machine/enumeration/hydra/
./configure > /dev/null 2>&1 && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/stompy ] ; then
echo -n "   Stompy "
cd /war-machine/temp && wget http://dl.packetstormsecurity.net/web/stompy.tgz > /dev/null 2>&1
tar zxvf stompy.tgz > /dev/null 2>&1 && rm -rf stompy.tgz
mv stompy /war-machine/web/
 
fi


if [ ! -f /war-machine/wireless/eapmd5crack.py ] ; then
echo -n "   EAP MD5 Crack "
cd /war-machine/wireless && wget http://ptscripts.googlecode.com/svn/trunk/eapmd5crack.py > /dev/null 2>&1
 
fi

if [ ! -f /war-machine/database/sqlbrute.py ] ; then
echo -n "   SQLBrute "
cd /war-machine/database && wget http://packetstorm.foofus.com/UNIX/scanners/sqlbrute.py.txt -O sqlbrute.py > /dev/null 2>&1
cd /war-machine/database && chmod 700 sqlbrute.py
fi
if [ ! -d /war-machine/voip/ace ] ; then
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/ucsniff/ace/ace-1.10.tar.gz > /dev/null 2>&1
tar xvf ace-1.10.tar.gz > /dev/null 2>&1 && rm -rf ace-1.10.tar.gz
mv ace-1.10 /war-machine/voip/ace
cd /war-machine/voip/ace && make > /dev/null 2>&1
 
fi


if [ ! -d /war-machine/database/tnspoison ] ; then
echo -n "   TNS Poison "
cd /war-machine/database && mkdir tnspoison
cd tnspoison/ && wget http://www.joxeankoret.com/download/tnspoison.zip > /dev/null 2>&1
unzip tnspoison.zip > /dev/null 2>&1 && rm -rf tnspoison.zip
 
fi

if [ ! -d /war-machine/voip/enumiax ] ; then
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/enumiax/enumiax-1.0.tar.gz > /dev/null 2>&1
tar zxvf enumiax-1.0.tar.gz > /dev/null 2>&1 && rm -rf enumiax-1.0.tar.gz
mv enumiax-1.0 /war-machine/voip/enumiax && cd /war-machine/voip/enumiax
make > /dev/null 2>&1
fi

if [ ! -d /war-machine/voip/rtpbreak ] ; then
echo -n "   RTP Break "
cd /war-machine/temp && wget http://dl.packetstormsecurity.net/sniffers/rtpbreak-1.3a.tgz > /dev/null 2>&1
tar zxvf rtpbreak-1.3a.tgz > /dev/null 2>&1 && rm -rf rtpbreak-1.3a.tgz
mv rtpbreak-1.3a /war-machine/voip/rtpbreak 
cd /war-machine/voip/rtpbreak && make > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/thc-ipv6 ] ; then
echo -n "   THC IPv6 "
cd /war-machine/temp && wget http://www.thc.org/releases/thc-ipv6-2.3.tar.gz > /dev/null 2>&1
tar zxvf thc-ipv6-2.3.tar.gz > /dev/null 2>&1 && rm -rf thc-ipv6-2.3.tar.gz
mv thc-ipv6-2.3 /war-machine/enumeration/thc-ipv6 && cd /war-machine/enumeration/thc-ipv6
make all > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/voip/voiphopper ] ; then
echo -n "   VOIP Hopper "
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/voiphopper/voiphopper-2.0/voiphopper-2.04.tar.gz > /dev/null 2>&1
tar zxvf voiphopper-2.04.tar.gz > /dev/null 2>&1 && rm -rf voiphopper-2.04.tar.gz
mv voiphopper-2.04 /war-machine/voip/voiphopper && cd /war-machine/voip/voiphopper
cd /war-machine/voip/voiphopper && make > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/burp ] ; then
echo -n "   Burp Suite "
mkdir /war-machine/web/burp && cd /war-machine/web/burp
wget http://portswigger.net/burp/burpsuite_free_v1.5.jar > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/cisco/torch ] ; then
echo -n "   Cisco Torch "
cd /war-machine/temp && wget http://www.hackingciscoexposed.com/tools/cisco-torch-0.4b.tar.gz > /dev/null 2>&1
tar zxvf cisco-torch-0.4b.tar.gz > /dev/null 2>&1 && rm -rf cisco-torch-0.4b.tar.gz
mv cisco-torch-0.4b /war-machine/cisco/torch
 
fi


if [ ! -d /war-machine/audit/rips ] ; then
echo -n "Downloading RIPS PHP Static Source Code Analyzer "
cd /war-machine/audit && mkdir rips
cd /war-machine/audit/rips && wget http://sourceforge.net/projects/rips-scanner/files/rips-0.40.zip/download -O rips.zip > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/wireless/cowpatty ] ; then
echo -n "   CowPatty "
cd /war-machine/temp && wget http://www.wirelessdefence.org/Contents/Files/cowpatty-4.6.tgz > /dev/null 2>&1
tar zxvf cowpatty-4.6.tgz > /dev/null 2>&1 && rm -rf cowpatty-4.6.tgz
mv cowpatty-4.6/ /war-machine/wireless/cowpatty && cd /war-machine/wireless/cowpatty
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/dirbuster ] ; then
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/dirbuster/DirBuster-0.12.tar.bz2 > /dev/null 2>&1
bunzip2 DirBuster-0.12.tar.bz2 > /dev/null 2>&1 && tar xvf DirBuster-0.12.tar > /dev/null 2>&1
rm -rf DirBuster-0.12.tar && mv DirBuster-0.12 /war-machine/enumeration/dirbuster
cd /war-machine/enumeration/dirbuster
echo "java -jar DirBuster-0.12.jar" >> start-dirbuster.sh > /dev/null 2>&1 && chmod 700 start-dirbuster.sh
fi

if [ ! -f /war-machine/database/mysqlaudit.py ] ; then
echo -n "   MySQLAudit "
cd /war-machine/database && wget http://www.darkoperator.com/tools-and-scripts/mysqlaudit.py > /dev/null 2>&1
chmod 755 mysqlaudit.py
 
fi

if [ ! -d /war-machine/passwords/john ] ; then
echo -n "   John the Ripper "
cd /war-machine/temp && wget http://www.openwall.com/john/g/john-1.7.9-jumbo-7.tar.gz  > /dev/null 2>&1
tar xvf john-1.7.9-jumbo-7.tar.gz > /dev/null 2>&1 && rm -rf john-1.7.9-jumbo-7.tar.gz
mv john-1.7.9-jumbo-7/ /war-machine/passwords/john && cd /war-machine/passwords/john/src
echo "Compiling for linux-x86-64, if this fails you will need to figure out which works on your system manually."
make linux-x86-64-native > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/misc/flare ] ; then
echo -n "   Flare "
cd /war-machine/misc && mkdir flare
cd /war-machine/misc/flare && wget http://www.nowrap.de/download/flare06linux.tgz > /dev/null 2>&1
tar xvf flare06linux.tgz > /dev/null 2>&1 && rm -rf flare06linux.tgz
 
fi

if [ ! -d /war-machine/enumeration/gggooglescan ] ; then
echo -n "   gggooglescan "
cd /war-machine/temp && wget http://dl.packetstormsecurity.net/UNIX/scanners/gggooglescan-0.4.tar.gz > /dev/null 2>&1
tar zxvf gggooglescan-0.4.tar.gz > /dev/null 2>&1 && rm -rf gggooglescan-0.4.tar.gz
mv gggooglescan-0.4 /war-machine/enumeration/gggooglescan
 
fi

if [ ! -d /war-machine/enumeration/rdp-sec-check ] ; then
echo -n "   RDP Security Checker "
cd /war-machine/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/rdp-sec-check-0.8.tar.gz > /dev/null 2>&1
tar xvf rdp-sec-check-0.8.tar.gz > /dev/null 2>&1 && rm -rf rdp-sec-check-0.8.tar.gz
mv rdp-sec-check-0.8 /war-machine/enumeration/rdp-sec-check
 
fi

if [ ! -d /war-machine/wireless/hwk ] ; then
echo -n "   HWK Wireless Auditing Tool "
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/project/hwk/hwk_0.3.2.tar.gz > /dev/null 2>&1
tar xvf hwk_0.3.2.tar.gz > /dev/null 2>&1 && rm -rf hwk_0.3.2.tar.gz
mv hwk_0.3.2 /war-machine/wireless/hwk
cd /war-machine/wireless/hwk && make  > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/smbexec ] ; then
echo -n "   smbexec "
cd /war-machine/temp && wget http://prdownloads.sourceforge.net/project/smbexec/smbexec-1.1.0.tar.gz > /dev/null 2>&1
tar xvf smbexec-1.1.0.tar.gz > /dev/null 2>&1 && rm -rf smbexec-1.1.0.tar.gz
mv smbexec /war-machine/exploits
 
fi

if [ ! -f /war-machine/enumeration/mdns.py ] ; then
echo -n "   mDNS Scanner "
cd /war-machine/enumeration && wget http://www.gnucitizen.org/static/blog/2008/01/mdns.py > /dev/null 2>&1
cd /war-machine/temp && wget http://pybonjour.googlecode.com/files/pybonjour-1.1.1.tar.gz > /dev/null 2>&1
tar xvf pybonjour-1.1.1.tar.gz > /dev/null 2>&1 && rm -rf pybonjour-1.1.1.tar.gz
cd pybonjour-1.1.1/ && sudo python setup.py install > /dev/null 2>&1
cd /war-machine/temp && sudo rm -rf pybonjour-1.1.1
 
fi

if [ ! -d /war-machine/enumeration/win-enum ] ; then
echo -n "   Windows Enum Tools "
cd /war-machine/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/enum4linux-0.8.8.tar.gz > /dev/null 2>&1
tar xvf enum4linux-0.8.8.tar.gz > /dev/null 2>&1 && rm -rf enum4linux-0.8.8.tar.gz
mv enum4linux-0.8.8 /war-machine/enumeration/win-enum
cd /war-machine/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/polenum-0.2.tar.bz2 > /dev/null 2>&1
bunzip2 polenum-0.2.tar.bz2 > /dev/null 2>&1 && tar xvf polenum-0.2.tar > /dev/null 2>&1
rm -rf polenum-0.2.tar > /dev/null 2>&1 && sudo mv polenum-0.2/polenum.py /usr/local/bin/
sudo chmod 755 /usr/local/bin/polenum.py && rm -rf rm -rf polenum-0.2/
 
fi

if [ ! -d /war-machine/enumeration/apache_userdir ] ; then
echo -n "   Apache UserDir Enumerator "
cd /war-machine/temp && wget --no-check-certificate http://labs.portcullis.co.uk/download/apache_users-2.1.tar.gz > /dev/null 2>&1
tar xvf apache_users-2.1.tar.gz > /dev/null 2>&1 && rm -rf apache_users-2.1.tar.gz
mv apache_users /war-machine/enumeration/apache_userdir
 
fi

if [ ! -d /war-machine/web/aspshell ] ; then
echo -n "   ASPshell "
cd /war-machine/web && mkdir aspshell
cd aspshell && wget http://downloads.sourceforge.net/project/aspshell/aspshell/aspshell%200.2/aspshell-0.2.zip > /dev/null 2>&1
unzip aspshell-0.2.zip > /dev/null 2>&1 && rm -rf aspshell-0.2.zip
 
fi
echo ""
echo "Listo, instalacion completa"