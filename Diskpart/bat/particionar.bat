@ECHO OFF

REM Creamos el directorio donde irá montada la partición lógica
MKDIR C:\COSAS

REM Ejecutamos diskpart pasándole como parámetro el archivo de respuesta
DISKPART /s C:\Users\si\Desktop\particiones.txt