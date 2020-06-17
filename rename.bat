::SET PC NAME
SET NEWNAME=
SET /P NEWNAME= 

::Change PC Name
WMIC ComputerSystem where Name='%computername%' call Rename Name=%NEWNAME%
ECHO The PC Name Is Now %NEWNAME%
