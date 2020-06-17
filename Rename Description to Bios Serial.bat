
Echo  @echo off
set "desc=&for /f "skip=1 tokens=*" %%m in ('WMIC bios get serialnumber') do if not defined desc set "desc=%%m"

echo Adding %desc% To PC Description

@echo off
set cpdesc=%desc%
net config server /srvcomment:"%cpdesc%"
set cpdesc=%desc%
CLS
Echo Process Complete
ECHO Check To See That It Is Configured Correctly
sysdm.cpl


