@echo off


rem Algunos de los comandos de las prácticas realizadas en ms dos eran incorrectos por lo que en esta practica son distintos a los que tenia, como crear un directorio D
rem práctica 2.2.1
md D
cd D
md APLI
md PROG 
md VARIOS
cd APLI
md WORD
md ACCESS
md EXCEL
cd..
cd apli
cd word
md textos
md notas
cd..
cd excel
md tablas
md info
cd..
cd..
cd prog
md basic
md pascal
md fortran
cd..
cd APLI
cd EXCEL
cd TABLAS
cd..
cd..
cd..
cd prog 
dir 
pause 
rd C:\D\APLI\EXCEL\info
cd..
cd varios 
md C:\D\APLI\WORD\pract
cd..
cd apli
cd word
cd pract
dir C:\D\APLI\EXCEL
pause
echo.>Fabian.txt
echo.>Ordonez.doc
echo.>Melendez.bat
cd C:\D\APLI\EXCEL\tablas 
tree /f C:\D
pause
cd C:\D\APLI
md C:\D\VARIOS\AGENDA
rd C:\D\APLI\EXCEL\tablas
cd..
rd C:\D\APLI\EXCEL
cd C:\D\APLI\WORD\pract
del Ordonez.doc
del Melendez.BAT
cd c:\D
md NUEVO
del C:\D\APLI\WORD\pract\Fabian.TXT
cd C:\D\APLI\WORD\pract
tree /f C:\D\APLI\WORD
pause


rem práctica 2.2.2

cd C:\D\APLI\WORD\TEXTOS
copy EJER.TXT C:\D\VARIOS\AGENDA
DEL C:\D\APLI\WORD\TEXTOS\EJER.TXT
copy EJER.TXT C:\D\PROG\BASIC
CD C:\D\VARIOS\AGENDA
MOVE EJER.TXT FICHERO.TXT
move FICHERO.TXT C:\D\PROG\BASIC
COPY EJER.TXT C:\D\PROG\BASIC
CD C:\D\PROG\BASIC
cd C:\D\APLI\WORD
echo.>Fabian.txt
echo.>Asir.txt
echo.>2023.txt
cd C:\D\APLI\WORD\PRACT
COPY C:\D\APLI\WORD\*.txt C:\D\APLI\WORD\NOTAS
dir C:\D\PROG\BASIC
pause
dir C:\D\APLI\WORD\NOTAS 
pause

rem practica 2.2.3

rem borramos la carpeta access y en su lugar creamos la carpeta access 
rd c:\d\apli\access
PAUSE
md c:\d\apli\ASTRO
rem creamos una estructura dentro de astro  
cd c:\d\apli\ASTRO
md HISTORIA
md CIENCIA
cd HISTORIA
md DATOS1
md DATOS2
CD..
cd CIENCIA
md ASTRO1
md ASTRO2
rem nos situamos en la carpeta ciencia y desde allí mostramos el listado de archivos de historia 
cd..
tree /f C:\d\apli\astro\historia
pause
rem creamos una archivo llamado TYCHO.TXT dentro de DATOS1
cd C:\d\apli\astro\historia\datos1
ECHO LA IMPORTANCIA DE TYCHO BRAHE (1546-1601) ES DEBIDA A SUS TRABAJOS OBSERVACIONALES,QUE REGISTRARON POSICIONES NOTABLES DEL SOL,LA LUNA Y LOS PLANETAS.>TYCHO.TXT

rem creamos el archivo de texto llamado KEPLER.TXT dentro de DATOS2
CD..
cd C:\d\apli\astro\historia\datos2
echo la informacion acumulada facilitó a Johannes Kepler (1571-1630) el descubrimiento de las leyes que gobiernan el movimiento de los planetas>KEPLER.TXT

copy KEPLER.TXT C:\d\apli\astro\CIENCIA
copy C:\D\APLI\ASTRO\HISTORIA\DATOS1\TYCHO.TXT C:\d\apli\astro\CIENCIA
 
rem cambiamos de lugar los archivos ticho.txt>datos2 y kepler.txt>datos1
move kepler.txt C:\D\APLI\ASTRO\HISTORIA\DATOS1
CD..
CD DATOS1 
MOVE TYCHO.TXT C:\D\APLI\ASTRO\HISTORIA\DATOS2

rem creamos un archivo formqado por la union de los dos anteriores llamado TOTAL.TXT DENTRO DE HISTORIA
COPY KEPLER.TXT+C:\D\APLI\ASTRO\HISTORIA\DATOS2\TYCHO.TXT C:\D\APLI\ASTRO\HISTORIA\TOTAL.TXT

rem editamos el archivo kepler.txt 
cd C:\d\apli\astro\CIENCIA
echo la informacion acumulada facilitó a Johannes Kepler (1571-1630) el descubrimiento de las leyes que gobiernan el movimiento de los planetas.Kepler aplicó sus teorías a los satélites de júpiter,descubiertos por Galileo a través de un pequeño telescopio,cuya introduccion en la observacion astronómica constituye uno de los hitos de la astronomia.>>KEPLER.TXT
REM cambiamos el nombre del archivo anterior a GALILEO.TX
rename KEPLER.TXT GALILEO.TX



REM PRACTICA 2.2.4
REM CREA LA CARPETA TECINFO DENTRO DE D
CD C:\D
MD TECINFO
REM DENTRO DE TECINFO CREAMOS EL ARCHIVO LLAMADO HARD.TXT 
CD TECINFO
ECHO EL HARDWARE ESTÁ CONSTITUIDO POR LOS ELEMENTOS FÍSICOS DEL ORDENADOR.cONSTA ESENCIALMENTE DE COMPONENTES ELECTRÓNICOS QUE PROPORCIONAN EL SOPORTE NECESARIO PARA LA INTERPRETACION Y EJECUCION DE LAS OPERACIONES ELEMENTALES QUE REALIZA EL ORDENADOR>HARD.TXT
REM TAMBIEN CREAMOS EL ARCHIVO LLAMADO SOFT.TXT
ECHO l SOFTWARE es el conjunto de elementos lógicos necesarios para que el ordenador realice las funciones que se le encomiendan. Está formado por los programas, es decir, por un conjunto ordenado de instrucciones, comprensibles por la máquina, que permiten desarrollar tareas concretas>SOFT.TXT
REM MOVEMOS EL CONTENIDO DE TECINFO A LA CARPETA APLI
MOVE *.txt c:\d\apli
REM CREAMOS UN NUEVO ARCHIVO LLAMADO ORDER.TXT FORMADO POR LOS ARCHIVOS ANTERIORES 
CD C:\D\APLI
COPY HARD.TXT+SOFT.TXT C:\D\VARIOS\AGENDA\ORDER.TXT
rem borra la carpeta tecinfo
CD C:\D
RD TECINFO
REM COPIA A LA VEZ LOS ARCHIVOS HARD.TXT Y SOFT.TXT EN LA CARPETA VARIOS 
CD APLI 
COPY *.TXT C:\D\VARIOS 
REM CAMBIAMOS LA EXTENSION DE LOS ARCHIVOS CONTENIDOS EN AGENDA POR .TYP
RENAME ORDER.TXT ORDER.TY
REM CREAMOS 3 ARCHIVOS .TXT EN EL DIRECTORIO APLI
ECHO.>WINRAR.TXT
ECHO.>WORD.TXT
ECHO.>EXCEL.TXT
REM CAMBIA EL TIPO DE ARCHIVO ANTERIOR DE APLI A .DOC 
RENAME WINRAR.TXT WINRAR.DOC
RENAME WORD.TXT WORD.DOC
RENAME EXCEL.TXT EXCEL.DOC 
REM COPIA LOS ARCHIVOS .DOC DE APLI A AGENDA 
COPY *.DOC C:\D\VARIOS\AGENDA
PAUSE 

