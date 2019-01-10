#!/bin/sh

~/Documents/apache-tomcat-8.5.33/bin/shutdown.sh
mvn clean install &&
rm -rf ../../apache-tomcat-8.5.33/webbapps/legacy
rm ../../apache-tomcat-8.5.33/webapps/legacy.war
cp target/legacy.war ../../apache-tomcat-8.5.33/webapps/ &&
~/Documents/apache-tomcat-8.5.33/bin/startup.sh
