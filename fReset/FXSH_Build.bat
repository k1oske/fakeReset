@echo off
rem Do not edit! This batch file is created by CASIO fx-9860G SDK.


if exist FRESET.G1A  del FRESET.G1A

cd debug
if exist FXADDINror.bin  del FXADDINror.bin
"C:\Users\henry\Desktop\Casio SDK\OS\SH\Bin\Hmake.exe" Addin.mak
cd ..
if not exist debug\FXADDINror.bin  goto error

"C:\Users\henry\Desktop\Casio SDK\Tools\MakeAddinHeader363.exe" "C:\Users\henry\Documents\GitHub\fakeReset\fReset"
if not exist FRESET.G1A  goto error
echo Build has completed.
goto end

:error
echo Build was not successful.

:end

