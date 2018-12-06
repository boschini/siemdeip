curl -s 'http://www.botvrij.eu/data/ioclist.ip-dst.raw' > botvrij.temp
cat botvrij.temp >> botvrij-ip.txt

curl -s 'http://osint.bambenekconsulting.com/feeds/c2-ipmasterlist.txt' > bambek.temp
cat bambek.temp | grep IP| awk -F , '{print $1}' > bambek-ip.txt

curl -s 'https://rules.emergingthreats.net/blockrules/compromised-ips.txt' > emergingthreats.temp
cat emergingthreats.temp > emergingthreats-ip.txt

## TO BE FIXED curl -s -L 'http://www.talosintelligence.com/documents/ip-blacklist' > talos-ip.txt

curl -s 'http://cinsscore.com/list/ci-badguys.txt' > ci-badguys-ip.txt

curl -s 'https://www.badips.com/get/list/any/2' > badips-ip.txt

curl -s 'http://reputation.alienvault.com/reputation.data' > alienvault.temp
cat alienvault.temp | awk -F '#' '{print $1}' > alienvault-ip.txt

curl -s 'https://urlhaus.abuse.ch/downloads/text/' > urlhaus-abuse.temp
cat urlhaus-abuse.temp |   grep -E ':\/\/[1-9]+\.[0-9]+' | awk -F / '{print $3}' | sed -e 's/:.*//' > urlhaus-abuse-ip.txt

rm -f *.temp
mv IP-BAD.txt IP-BAD.txt.SAVE

cat *-ip.txt | sort | uniq > IP-BAD.txt
