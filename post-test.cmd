@echo off
rem jenkins trigger
curl -H POST http://admin:admin@localhost:7070/job/your-tests/build?token=my_token
