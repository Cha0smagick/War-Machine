echo "INICIALIZANDO"
if [ ! -d /war-machine/wireless/giskismet ] ; then
echo -n "  gisKismet "
cd /war-machine/wireless && svn co https://my-svn.assembla.com/svn/giskismet/trunk giskismet > /dev/null 2>&1
cd /war-machine/wireless/giskismet && sudo cpanm --installdeps . > /dev/null 2>&1
perl Makefile.PL > /dev/null 2>&1 && make > /dev/null 2>&1
 
fi
if [ ! -d /war-machine/wireless/wifite/ ] ; then
echo -n "  Wifitie "
cd /war-machine/wireless > /dev/null 2>&1 && wget https://raw.github.com/derv82/wifite/master/wifite.py > /dev/null 2>&1
chmod +x wifite.py  > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/set ] ; then
echo -n "  the Social Engineering Toolkit "
cd /war-machine/exploits && git clone https://github.com/trustedsec/social-engineer-toolkit/ set > /dev/null 2>&1
cd set && sudo python setup.py install > /dev/null 2>&1
 
fi


if [ ! -d /war-machine/exploits/framework3 ] ; then
echo -n "  Metasploit "
cd /war-machine/exploits && git clone https://github.com/rapid7/metasploit-framework.git framework3 > /dev/null 2>&1
sudo bundle install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/warvox ] ; then
echo -n "  Warvox "
cd /war-machine/exploits && git clone https://github.com/rapid7/warvox.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/wapiti ] ; then
echo -n "  Wapiti "
cd /war-machine/web && svn co https://wapiti.svn.sourceforge.net/svnroot/wapiti wapiti > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/fuzzers/wfuzz ] ; then
echo -n "  wfuzz "
cd /war-machine/fuzzers && svn checkout http://wfuzz.googlecode.com/svn/trunk/ wfuzz > /dev/null 2>&1
cd /war-machine/fuzzers/wfuzz && chmod 700 wfuzz.py
 
fi

if [ ! -d /war-machine/web/fimap ] ; then
echo -n "  fimap "
cd /war-machine/web && svn checkout http://fimap.googlecode.com/svn/trunk/ fimap > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/zap ] ; then
echo -n "  ZED Attack Proxy "
cd /war-machine/temp && wget http://zaproxy.googlecode.com/files/ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1
tar xvf ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1 && rm -rf ZAP_2.1.0_Linux.tar.gz > /dev/null 2>&1
mv ZAP_2.1.0/ /war-machine/web/zap > /dev/null 2>&1 && cd /war-machine/web && svn checkout --force http://zaproxy.googlecode.com/svn/trunk/ zap  > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/w3af ] ; then
echo -n "  w3af "
cd /war-machine/web && git clone https://github.com/andresriancho/w3af.git w3af  > /dev/null 2>&1
sudo pip install PyGithub GitPython pybloomfiltermmap esmre pdfminer futures guess-language cluster msgpack-python python-ntlm clamd xdot > /dev/null 2>&1
sudo pip install -e git+git://github.com/ramen/phply.git#egg=phply > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/fuzzers/sulley ] ; then
echo -n "  Sulley "
cd /war-machine/fuzzers && svn checkout http://sulley.googlecode.com/svn/trunk/ sulley > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/nikto ] ; then
echo -n "  Nikto "
cd /war-machine/web && svn co http://svn2.assembla.com/svn/Nikto_2/trunk nikto > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/joomscan ] ; then
echo -n "  Joomla Scanner "
cd /war-machine/web/ && svn co https://svn.code.sf.net/p/joomscan/code/ joomscan > /dev/null 2>&1
cd /war-machine/web/joomscan/trunk && chmod 755 joomscan.pl > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/sslyze ] ; then
echo -n "  the SSLyze "
cd /war-machine/web && git clone https://github.com/iSECPartners/sslyze.git > /dev/null 2>&1
 
fi

if [ ! -d /var/www/beef/.git/ ] ; then
echo -n "  Beef "
cd /var/www && sudo git clone https://github.com/beefproject/beef.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/fierce2 ] ; then
echo -n "  Fierce2 "
cd /war-machine/enumeration && svn co https://svn.assembla.com/svn/fierce/fierce2/trunk/ fierce2 > /dev/null 2>&1
cd fierce2 && sudo cpanm --installdeps . > /dev/null 2>&1
perl Makefile.PL > /dev/null 2>&1 && make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/wireless/kismet ] ; then
echo -n "  Kismet "
cd /war-machine/wireless && git clone https://www.kismetwireless.net/kismet.git > /dev/null 2>&1
cd /war-machine/wireless/kismet > /dev/null 2>&1
./configure > /dev/null 2>&1 && make dep > /dev/null 2>&1
make  > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/captcha-breaker ] ; then
echo -n "  Captcha Breaker "
cd /war-machine/web && svn checkout http://captcha-breaker.googlecode.com/svn/trunk/ captcha-breaker > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/database/sqlmap ] ; then
echo -n "  SQL Map "
cd /war-machine/database && git clone https://github.com/sqlmapproject/sqlmap.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/database/sqlninja ] ; then
echo -n "  SQL Ninja "
cd /war-machine/database && svn co https://sqlninja.svn.sourceforge.net/svnroot/sqlninja sqlninja > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/laudanum ] ; then
echo -n "  Laudanum "
cd /war-machine/web && svn co https://laudanum.svn.sourceforge.net/svnroot/laudanum laudanum > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/fuzzers/fuzzdb ] ; then
echo -n "  FuzzDB "
cd /war-machine/fuzzers && svn checkout http://fuzzdb.googlecode.com/svn/trunk/ fuzzdb > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/monkeyfist ] ; then
echo -n "  MonkeyFist "
cd /war-machine/enumeration && svn checkout http://monkeyfist.googlecode.com/svn/trunk/ monkeyfist > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/fuzzers/jbrofuzz ] ; then
echo -n "  JBroFuzz "
cd /war-machine/fuzzers && svn co https://svn.code.sf.net/p/jbrofuzz/code/ jbrofuzz > /dev/null 2>&1
cd /war-machine/fuzzers/jbrofuzz/jar && chmod 700 jbrofuzz.sh > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/phpshell ] ; then
echo -n "  PHP Shell "
cd /war-machine/web && svn co https://phpshell.svn.sourceforge.net/svnroot/phpshell phpshell > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/htshells ] ; then
echo -n "  htshells "
cd /war-machine/web && git clone git://github.com/wireghoul/htshells.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/dnsenum ] ; then
echo -n "  DNSenum "
cd /war-machine/enumeration && svn checkout http://dnsenum.googlecode.com/svn/trunk/ dnsenum > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/fuzzers/wsfuzzer ] ; then
echo -n "  WSFuzzer "
cd /war-machine/fuzzers && svn co https://wsfuzzer.svn.sourceforge.net/svnroot/wsfuzzer wsfuzzer > /dev/null 2>&1
 
fi
if [ ! -d /war-machine/passwords/pyrit ] ; then
echo -n "  Pyrit "
cd /war-machine/passwords && svn co http://pyrit.googlecode.com/svn/trunk/ pyrit > /dev/null 2>&1
cd /war-machine/passwords/pyrit/pyrit && python setup.py build  > /dev/null 2>&1
sudo python setup.py install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/middler ] ; then
echo -n "  Middler "
cd /war-machine/exploits && svn checkout http://middler.googlecode.com/svn/trunk/ middler > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/keimpx ] ; then
echo -n "  keimpx "
cd /war-machine/exploits && svn checkout http://keimpx.googlecode.com/svn/trunk/ keimpx > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/audit/routerdefense ] ; then
echo -n "  Router Defense "
cd /war-machine/audit && svn checkout http://routerdefense.googlecode.com/svn/trunk/ routerdefense > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/wpscan ] ; then
echo -n "  Wordpress Scanner "
cd /war-machine/web && git clone https://github.com/wpscanteam/wpscan.git > /dev/null 2>&1
sudo bundle install --without test development > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/WhatWeb ] ; then
echo -n "  WhatWeb "
cd /war-machine/web && git clone git://github.com/urbanadventurer/WhatWeb.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/scanners/nmap ] ; then
echo -n "  and compiling nmap "
cd /war-machine/scanners && svn co https://svn.nmap.org/nmap nmap > /dev/null 2>&1
cd /war-machine/scanners/nmap && ./configure > /dev/null 2>&1
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/scanners/ncrack ] ; then
echo -n "  and compiling ncrack "
cd /war-machine/scanners && svn co https://svn.nmap.org/ncrack ncrack > /dev/null 2>&1
cd /war-machine/scanners/ncrack && ./configure > /dev/null 2>&1
make > /dev/null 2>&1 && sudo make install > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/passwords/ntlmsspparse ] ; then
echo -n "  NTLMS Parse "
cd /war-machine/passwords && git clone https://github.com/psychomario/ntlmsspparse.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/ptscripts ] ; then
echo -n "  recon-ng "
cd /war-machine/enumeration && svn checkout http://ptscripts.googlecode.com/svn/trunk/ ptscripts > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/exploits/Responder ] ; then
echo -n "  Spiderlabs Resonder "
cd /war-machine/exploits/ && git clone https://github.com/SpiderLabs/Responder.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/enumeration/ike/groupenum ] ; then
echo -n "  Spiderlabs groupenum "
cd /war-machine/enumeration/ && git clone https://github.com/SpiderLabs/groupenum.git > /dev/null 2>&1
 
fi

if [ ! -d /war-machine/web/watobo ] ; then
echo -n "  Watobo "
cd /war-machine/web/ && svn checkout http://svn.code.sf.net/p/watobo/code/ watobo > /dev/null 2>&1
 
fi

echo ""
echo "INSTALACION COMPLETA"