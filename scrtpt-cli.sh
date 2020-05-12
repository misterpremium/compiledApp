#!/bin/bash
echo "se inicia el script"
sleep 10
echo "configurando mq queue y connection factory"
/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=messaging-activemq/server=default/jms-queue="jms\/queue":add\(entries=["java:jboss/exported/jms/queue"]\)
/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=messaging-activemq/server=default/connection-factory="jms\/fabrica":add\(entries=["java:jboss/exported/jms/fabrica"],connectors=[in-vm]\)

/opt/eap/bin/jboss-cli.sh --connect --command=:reload

sleep 20

#/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=undertow/configuration=filter/gzip=gzipfilter:add\(\)
#echo "ejecutado el comando de gzipfilter"
#/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=undertow/server=default-server/host=default-host/setting=access-log:add
#sleep 10
#/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=undertow/server=default-server/host=default-host/setting=access-log:write-attribute\(name=prefix,value=SitioWebFinal_access\)
#sleep 10
#/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=undertow/server=default-server/host=default-host/setting=access-log:write-attribute\(name=pattern,value=\"%h\ %l\ %u\ \[%t\]\ "%r"\ %s\ %b\ "\%\{i,Referer\}"\ "\%\{i,User-Agent\}"\ %D\ ms\"\)
#sleep 10
#/opt/eap/bin/jboss-cli.sh --connect --command=/subsystem=undertow/server=default-server/http-listener=default/:write-attribute\(name=record-request-start-time,value=true\)
#sleep 20
#echo "reiniciando"
#/opt/eap/bin/jboss-cli.sh --connect --command=:reload

#sleep 60
#rm /opt/eap/standalone/deployments/SitioWebFinal.war.failed
#cp /tmp/src/SitioWebFinal.war.skipdeploy /opt/eap/standalone/deployments/SitioWebFinal.war
cat /dev/null > /home/jboss/scripts/scrtpt-cli.sh
#Prueba git
