@echo off

rem This batch file downloads the podcast Security Now as well as text transcript and pdf show notes
rem Security Now is hosted here: https://www.grc.com/securitynow.htm
rem ========================
rem The downloader will start at episode 1 and go to episode 593, the latest as I'm uploading the file
rem To update this for the future, change this line: for /L %%n IN (1,1,593)
rem That says start at episode 1, increment by 1 each time and end at episode 593
rem ========================
rem The files download into a folder called C:\sn, if you wish to change that edit the end of each of the 3 download lines
rem So c:\sn\sn-%NBR%.mp3 could be C:\some\other\folder\sn-%NBR%.mp3
rem ========================



if not (%1)==() goto FETCH
for /L %%n IN (1,1,593) DO call %0 %%n
goto QUIT
:FETCH
set NBR=000%1
set NBR=%NBR:~-3%
bitsadmin /transfer J%RANDOM% /download /priority normal http://media.grc.com/sn/sn-%NBR%.mp3 c:\sn\sn-%NBR%.mp3
bitsadmin /transfer J%RANDOM% /download /priority normal https://www.grc.com/sn/sn-%NBR%.txt c:\sn\sn-%NBR%.txt
bitsadmin /transfer J%RANDOM% /download /priority normal https://www.grc.com/sn/sn-%NBR%.pdf c:\sn\sn-%NBR%.pdf
:QUIT
