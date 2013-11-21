@echo off

IF NOT EXIST "%~dp0certs" (
    MKDIR "%~dp0certs"
)


makecert.exe -n "CN=%1" -in "Center Root CA" -ss my -e "07/01/2022" -eku 1.3.6.1.5.5.7.3.1 -pe -sky exchange "%~dp0certs\mysslcert.cer" -sv "%~dp0certs\mysslcert.pvk" -len 2048
pvk2pfx -pvk "%~dp0certs\mysslcert.pvk" -spc "%~dp0certs\mysslcert.cer" -pfx "%~dp0certs\mysslcert.pfx" -pi Pass@word1
