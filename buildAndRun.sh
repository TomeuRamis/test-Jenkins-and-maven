#!/bin/sh
mvn clean package && docker build -t com.mycompany/testofpullrequest .
docker rm -f testofpullrequest || true && docker run -d -p 9080:9080 -p 9443:9443 --name testofpullrequest com.mycompany/testofpullrequest