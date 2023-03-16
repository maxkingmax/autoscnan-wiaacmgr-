@echo off
echo 111>"\\{接扫描仪机器的主机名}\Users\Public\Pictures\do.scan"
@echo on
@ECHO  正在扫描中... 
@echo off
ping 127.0.0.1 -n 23 >NUL
explorer "\\{接扫描仪机器的主机名}\Users\Public\Pictures\"
