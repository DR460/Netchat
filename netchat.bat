@echo off
//by DR460//
:1
cls
color a
title ...:: NET CHAT ::... By DR460
echo ###############################################################################
echo ##                                                                           ##
echo ##                               Net Chat 1.0                                ##
echo ##                                                                           ##
echo ##                           Chat De Manera Local                            ##
echo ##                                                                           ##
echo ##                                                         By DR460          ##
echo ##                                                                           ##
echo ###############################################################################
echo.
echo Bienvenid@ %USERNAME%
echo Conectado Desde %COMPUTERNAME% 
echo Hora De Conexion %time% Fecha %date%
echo.
echo 1- Anfitrion                      2- Invitado
echo.
set /p cx=Selecciona una opcion para el modo de conexion 
echo.
if %cx%==1 goto an
if %cx%==2 goto in
if %cx%==asd (echo opcion invalida) else (goto 1)
:an
set /P ip=Conoses tu IP S/N 
if %ip%==S goto si
if %ip%==s goto si
if %ip%==N ipconfig
if %ip%==N goto si
if %ip%==n ipconfig
if %ip%==n goto si
if %ip%==xd else (goto an)
:si
echo.
set /P puer=Ingresa el puerto para correr el servicio (ejem. 80,443.8080) 
echo.
echo %USERNAME% Iniciando Servicio En el puerto  %puer% 
echo Esperando Invitados ...
echo Servidor Corriendo
echo Preciona control C para Salir
cd Bin
nc.exe -n -v -l -p %puer%
echo conexion Terminada 
pause >nul
msg * "Saludos %USERNAME% de Tu Amigo DR460"
exit 
:in
set /P ipa=Ingresa La Ip Del Anfitrion 
echo.
set /P pua=Ingresa El Puerto Del Anfitrion 
echo .
echo %USERNAME% Conectando A %ipa% En El Puerto %pua% 
echo Esperando Al Servidor ...
echo Conexion Establecida 
echo Preciona control C para Salir
cd Bin
nc.exe -n -v %ipa% %pua%
echo conexion Terminada 
pause >nul
msg * "Saludos %USERNAME% de Tu Amigo DR460"
exit
