if [ ! -d /war-machine/passwords/wordlists ]; then
echo -n "Instalando - Puede demorar un rato"
mkdir /war-machine/passwords/wordlists && cd /war-machine/passwords/wordlists
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/dictionaries"| grep -o '<a href="/files/download/[^"]*"' |sed 's/<a href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/dictionaries/;s/"$//'|cut -d "/" -f 1-6,8 >file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/names"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/names/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/computing"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/computing/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/dates"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/dates/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/language"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/language/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.org/Crackers/wordlists/literature"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/literature/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/sports"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/sports/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/science"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/science/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/religion"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/religion/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/misc"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/misc/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/music"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/music/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/movies_tv"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/movies_tv/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -q -U "Mozilla/5.0 (Linux; U; Android 2.1; en-us; Nexus One Build/ERD62) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17" -O- "http://packetstormsecurity.net/Crackers/wordlists/utilities"| grep -o 'href="/files/download/[^"]*"' |sed 's/href="\/files\/download/http:\/\/dl.packetstormsecurity.org\/Crackers\/wordlists\/utilities/;s/"$//'|cut -d "/" -f 1-6,8 >>file.txt
wget -nc -q -i file.txt > /dev/null 2>&1 && rm -rf file.txt


mv wordlist50.pl /war-machine/passwords/
cd /war-machine/passwords/wordlists && wget http://erikmusick.com/content/dl/WholeLottaPasswords.7z > /dev/null 2>&1
7za e WholeLottaPasswords.7z > /dev/null 2>&1 && rm -rf WholeLottaPasswords.hash WholeLottaPasswords.7z*
wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2 > /dev/null 2>&1 && bunzip2 rockyou.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/phpbb.txt.bz2 > /dev/null 2>&1 && bunzip2 phpbb.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/myspace.txt.bz2 > /dev/null 2>&1 && bunzip2 myspace.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/hotmail.txt.bz2 > /dev/null 2>&1 && bunzip2 hotmail.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/faithwriters.txt.bz2 > /dev/null 2>&1 && bunzip2 faithwriters.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/elitehacker.txt.bz2 > /dev/null 2>&1 && bunzip2 elitehacker.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/hak5.txt.bz2 > /dev/null 2>&1 && bunzip2 hak5.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/alypaa.txt.bz2 > /dev/null 2>&1 && bunzip2 alypaa.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/facebook-pastebay.txt.bz2 > /dev/null 2>&1 && bunzip2 facebook-pastebay.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/porn-unknown.txt.bz2 > /dev/null 2>&1 && bunzip2 porn-unknown.txt.bz2  > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/tuscl.txt.bz2 > /dev/null 2>&1 && bunzip2 tuscl.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/facebook-phished.txt.bz2 > /dev/null 2>&1 && bunzip2 facebook-phished.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/carders.cc.txt.bz2 > /dev/null 2>&1 && bunzip2 carders.cc.txt.bz2 > /dev/null 2>&1
wget http://downloads.skullsecurity.org/passwords/singles.org.txt.bz2 > /dev/null 2>&1 && bunzip2 singles.org.txt.bz2  > /dev/null 2>&1


gunzip *.gz > /dev/null 2>&1 && tar xvf fixed-length.tar > /dev/null 2>&1
rm -rf fixed-length.tar && rm -rf *.zip
rm -rf *.tgz && rm -rf *.c
rm -rf *.tar



echo -n "Merging local password files from other packages into the mass wordlist..."
cat /war-machine/exploits/framework3/data/wordlists/namelist.txt >> /war-machine/passwords/merged.txt  > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/db2_default_pass.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/http_default_pass.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1 
cat /war-machine/exploits/framework3/data/wordlists/postgres_default_pass.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/sid.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/snmp_default_pass.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/tomcat_mgr_default_pass.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/unix_passwords.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/vnc_passwords.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/exploits/framework3/data/wordlists/unix_users.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/enumeration/fierce2/hosts.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/enumeration/dnsmap/wordlist_TLAs.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/enumeration/dnsenum/dns.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/enumeration/dnsenum/dnsbig.txt >> /war-machine/passwords/merged.txt > /dev/null 2>&1
cat /war-machine/passwords/john/run/password.lst >> /war-machine/passwords/merged.txt > /dev/null 2>&1


cd /war-machine/passwords
echo -n "Sorting and removing duplicate passwords..."
cat wordlists/*  > mass1 && strings mass1 > /war-machine/passwords/strings
rm -rf mass1 && cat strings | sort -bi | uniq > combinedwordlist
rm -rf strings && rm -rf /war-machine/passwords/merged.txt

fi

if [ ! -d /war-machine/passwords/vendor ] ; then
echo " instalando listas de passwords por defecto de fabricantes"
mkdir /war-machine/passwords/vendor && cd /war-machine/passwords/vendor
wget -nc -q http://vulnerabilityassessment.co.uk/default_oracle_passwords.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsNO.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsA.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsB.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsB.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsD.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsE.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsF.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsG.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsH.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsI.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsJ.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsK.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsL.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsM.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsN.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsO.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsP.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsQ.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsR.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsS.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsT.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsU.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsV.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsW.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsX.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsY.htm > /dev/null 2>&1
wget -nc -q http://vulnerabilityassessment.co.uk/passwordsZ.htm > /dev/null 2>&1
wget -nc -q http://www.phenoelit-us.org/dpl/dpl.html > /dev/null 2>&1
fi
echo -e "Instalacion completa"