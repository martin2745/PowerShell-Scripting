<#
Ejercicio1
Escribir un programa que pida al usuario una palabra y la muestre por pantalla 10 veces.
#>

$i = 0
$palabra = Read-Host "Introduce una palabra"

while($i -lt 10){
    $i++
    Write-Host "Esta es la vez $i que escribo la palabra: $palabra"
}