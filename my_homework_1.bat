@ECHO OFF
ECHO ------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Computer Name and User Name
ECHO Username: %USERNAME% > client-device-information.txt
ECHO Hostname: %COMPUTERNAME% >> client-device-information.txt


ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Current IP and Network Adapters
ECHO ---------- >> client-device-information.txt
IPCONFIG >> client-device-information.txt


ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Available Memory Space and Get Available Hardisk Space
WMIC /NODE:"%COMPUTERNAME%" LOGICALDISK WHERE DRIVETYPE="3" GET DeviceID,VolumeName,FreeSpace >> client-device-information.txt



ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Current Working Directory
DIR|FIND "Directory of" >> client-device-information.txt



ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Current Running Applications and Services
TASKLIST >> client-device-information.txt


ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt


REM Get Current Opened Ports
NETSTAT >> client-device-information.txt


ECHO -------------------------------------------------------------------------------------------------------------------------------------------------------->> client-device-information.txt