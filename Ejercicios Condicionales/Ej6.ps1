<#Ejercicio6
Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo al sexo y 
el nombre. El grupo A está formado por las mujeres con un nombre anterior a la M 
y los hombres con un nombre posterior a la N y el grupo B por el resto. Escribir 
un programa que pregunte al usuario su nombre y sexo, y muestre por pantalla el 
grupo que le corresponde.
#>

<#Explicación
¿Como podemos comparar una cadena de caracteres con un solo caracter?
    --> martín -lt "m" -->¿Cómo es esto posible?
    Estamos comparando dos cadenas de caracteres por su primer caracter. PowerShell
    convierte a cósigo ASCII ambas las dos cadenas "m"artín y "m" y comparar por su
    codificación en ASCII. Por lo tanto, es menor si tiene un código ASCII menor.
#>
$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (Hombre/Mujer)"
if( ($sexo -eq "mujer" -and $nombre -lt "m") -or ($sexo -eq "Hombre" -and $nombre -gt "n") ){
    Write-Host "Perteneces al grupo A"
} else {
    Write-Host "Perteneces al grupo B"
}