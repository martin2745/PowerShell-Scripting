<#
Ejercicio 11
Escribir un programa que pregunte al usuario una cantidad a invertir, el interés
anual y el número de años, y muestre por pantalla el capital obtenido en la inversión.
#>

[float]$cantidad = Read-Host "Ingrese la cantidad a invertir"
[float]$interes = Read-Host "Ingrese el interés anual en porcentaje"
[int]$tiempo = Read-Host "Ingrese el número de años"

$interes_anual_ganado = $cantidad * ($interes/100)
$ganado = $interes_anual_ganado * $tiempo
Write-Host $ganado