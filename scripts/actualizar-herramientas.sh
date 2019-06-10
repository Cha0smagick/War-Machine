echo "Beginning package updates"
echo ""
echo -n "  gisKismet "
cd /war-machine/wireless/giskismet && svn up > /dev/null 2>&1
 

echo -n "  SET "
cd /war-machine/exploits/set && git pull > /dev/null 2>&1
 

echo -n "  Metasploit "
cd /war-machine/exploits/framework3 && git pull > /dev/null 2>&1
 
echo -n "  Wapiti "
cd /war-machine/web/wapiti && svn up > /dev/null 2>&1
 
echo -n "  ZED Attack Proxy "
cd /war-machine/web/zap && svn up > /dev/null 2>&1
 
echo -n "  w3af "
cd /war-machine/web/w3af && git pull > /dev/null 2>&1
  
echo -n "  waffit "
cd /war-machine/web/waffit && svn up > /dev/null 2>&1
 
echo -n "  Sulley "
cd /war-machine/fuzzers/sulley && svn up > /dev/null 2>&1
 
echo -n "  Nikto "
cd /war-machine/web/nikto && svn up > /dev/null 2>&1
 
echo -n "  The Harvester "
cd /war-machine/enumeration/theharvester && svn up > /dev/null 2>&1
 
echo -n "  htshells "
cd /war-machine/web/htshells && git pull > /dev/null 2>&1
 
echo -n "  SSLyze "
cd /war-machine/web/sslyze && git pull > /dev/null 2>&1
 
echo -n "  WPScanner " 
cd /war-machine/web/wpscan && git pull > /dev/null 2>&1
 
echo -n "  wfuzz "
cd /war-machine/fuzzers/wfuzz && svn up > /dev/null 2>&1
 
echo -n "  Fierce2 "
cd /war-machine/enumeration/fierce2 && svn up > /dev/null 2>&1
 
echo -n "  Kismet "
cd /war-machine/wireless/kismet && git pull > /dev/null 2>&1

echo -n "  fimap "
cd /war-machine/web/fimap && svn up > /dev/null 2>&1
 
echo -n "  SQL Map "
cd /war-machine/database/sqlmap && git pull > /dev/null 2>&1
 
echo -n "Updatign FuzzDB "
cd /war-machine/fuzzers/fuzzdb && svn up > /dev/null 2>&1
 
echo -n "  Monkeyfist "
cd /war-machine/enumeration/monkeyfist && svn up > /dev/null 2>&1
 
echo -n "  WSFuzzer "
cd /war-machine/fuzzers/wsfuzzer && svn up > /dev/null 2>&1
 
echo -n "  Captcha Breaker "
cd /war-machine/web/captcha-breaker && svn up > /dev/null 2>&1
 
echo -n "  SQLNinja "
cd /war-machine/database/sqlninja && svn up > /dev/null 2>&1
 
echo -n "  Laudanum "
cd /war-machine/web/laudanum && svn up > /dev/null 2>&1
 
echo -n "  JBroFuzz "
cd /war-machine/fuzzers/jbrofuzz && svn up > /dev/null 2>&1
 
echo -n "  PHP Shell "
cd /war-machine/web/phpshell && svn up > /dev/null 2>&1
 
echo -n "  DNS Enum "
cd /war-machine/enumeration/dnsenum && svn up > /dev/null 2>&1
 
echo -n "  Pyrit "
cd /war-machine/passwords/pyrit && svn up > /dev/null 2>&1
 
echo -n " Middler "
cd /war-machine/exploits/middler && svn up > /dev/null 2>&1
 
echo -n " keimpx "
cd /war-machine/exploits/keimpx && svn up > /dev/null 2>&1
 
echo -n "  Router Defense "
cd /war-machine/audit/routerdefense/ && svn up > /dev/null 2>&1
 
echo -n "  Wifite "
cd /war-machine/wireless/wifite && svn up > /dev/null 2>&1
 
echo -n "  nmap "
cd /war-machine/scanners/nmap && svn up > /dev/null 2>&1
sudo nmap --script-updatedb > /dev/null 2>&1
 
echo -n "  ncat"
cd /war-machine/scanners/nmap/ncat && svn up > /dev/null 2>&1
 
echo -n "  ncrack - you will need to recompile if needed "
cd /war-machine/scanners/ncrack && svn up > /dev/null 2>&1
 

echo -n "  Warvox "
cd /war-machine/exploits/warvox && git pull > /dev/null 2>&1
 
echo -n "  WhatWeb "
cd /war-machine/web/WhatWeb && git pull > /dev/null 2>&1
 
echo -n "  Responder "
cd /war-machine/exploits/Responder && git pull > /dev/null 2>&1
 
if [ -f /usr/sbin/openvas-nvt-sync ] ; then
echo -n "  OpenVAS "
sudo /usr/sbin/openvas-nvt-sync --wget > /dev/null 2>&1
 
else
echo "OpenVAS is not installed, skipping"
fi
if [ -f /opt/nessus/sbin/nessus-update-plugins ] ; then
echo -n "  Nessus Plugins "
sudo /opt/nessus/sbin/nessus-update-plugins > /dev/null 2>&1
 
else
echo "Nessus is not installed, skipping"
fi
/war-machine/web/skipfish/skipfish -h | grep "version"
if [ $? != "2.10b" ] ; then

else
echo "skipfish is not up to date,   now."
rm -rf /war-machine/web/skipfish && /war-machine/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/war-machine/passwords/john/run/john | grep "version"
if [ $? != "1.7.9-jumbo-7" ] ; then

else
echo "john the ripper is not up to date,   now."
rm -rf /war-machine/passwords/john && /war-machine/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/usr/local/bin/hydra | grep "v7.5"
if [ $? -eq 0 ] ; then

else
echo "THC Hydra is not up to date,   now."
rm -rf /war-machine/enumeration/hydra && /war-machine/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
/war-machine/enumeration/thc-ipv6/thcping6 | grep "v2.3" > /dev/null 2>&1
if [ $? -eq 0 ] ; then

else
echo "THC IPv6 Attack Suite is not up to date,   now"
rm -rf /war-machine/enumeration/thc-ipv6 && /war-machine/misc/va-pt/scripts/static.sh > /dev/null 2>&1
fi
echo -n "Downloading latest ExploitDB archive "
cd /war-machine/temp && wget http://www.exploit-db.com/archive.tar.bz2 > /dev/null 2>&1
bunzip2 archive.tar.bz2 > /dev/null 2>&1 && tar xvf archive.tar > /dev/null 2>&1
if [ -f files.csv ] ; then
echo "ExploitDB descarga completa. Los archivoes estan en:  /pentest/exploits/exploitdb "
rm -rf /war-machine/exploits/exploitdb && mkdir /war-machine/exploits/exploitdb
mv platforms/ /war-machine/exploits/exploitdb/ && mv files.csv /war-machine/exploits/exploitdb/
rm -rf archive.tar && sudo chmod -R 755 /war-machine/exploits/exploitdb
else
echo "ExploitDB Update Failed"
fi
#
while true; do
    read -p "Quieres actualizar el repositorio actual(y/n)" yn
    case $yn in
        [Yy]* ) /war-machine/misc/va-pt/scripts/db-update.sh;  break;;
        [Nn]* ) echo "Exit"; exit;;
        * ) echo "Responda con una y o una n por favor";;
    esac
done