#!/bin/sh

/home/laz/.jdks/corretto-17.0.4.1/bin/java  -Xmx1024M -jar "swagger-codegen-cli-2.4.44.jar" generate -i "/home/laz/IdeaProjects/LA/asterisk-la/server/swagger/calls_internal.yaml" -l python -o "." -c ./client.json
