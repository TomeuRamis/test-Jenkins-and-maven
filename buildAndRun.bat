@echo off
call mvn clean package
call docker build -t com.mycompany/testofpullrequest .
call docker rm -f testofpullrequest
call docker run -d -p 9080:9080 -p 9443:9443 --name testofpullrequest com.mycompany/testofpullrequest