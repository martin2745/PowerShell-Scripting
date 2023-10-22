<#
Ejercicio 4
Escribir un programa que pregunte el nombre del usuario en la consola y un número entero e imprima por pantalla en líneas
distintas el nombre del usuario tantas veces como el número introducido.
#>
$nombre = Read-Host "¿Cómo te llamas?"
[int]$veces = Read-Host "Introduce el número de veces que repito tu nombre"
for($i=0; $i -lt $veces; $i++){
    Write-Host $nombre
}