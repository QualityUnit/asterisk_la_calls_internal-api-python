#!/bin/sh

java -XX:MaxPermSize=256M -Xmx1024M -jar "/home/adminname/Documents/qu/swagger-codegen-cli.jar" generate -i "/home/adminname/www/develop/asterisk-la/server/swagger/calls_internal.yaml" -l python -o "." -c ./client.json
