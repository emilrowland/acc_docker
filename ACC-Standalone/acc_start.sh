#!/bin/bash
# Since: November, 2019
# Author: jordy@adobe.com

# Description: 
#    - start Apache 2.4
#    - Start PostgreSQL 9.6
#    - Start Campaign V7 

#CA cert
curl -x http://mitmweb:8080 mitm.it/cert/pem >  /usr/local/share/ca-certificates/mitmproxy.crt && update-ca-certificates

#APACHE
/usr/sbin/apache2ctl start  

#POSTGRESQL
/etc/init.d/postgresql start

#CAMPAIGN
/etc/init.d/nlserver6 start


while true
do
  sleep 3600
done