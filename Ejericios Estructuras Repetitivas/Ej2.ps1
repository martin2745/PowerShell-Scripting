<#
Ejercicio2
Escribir un programa que pregunte al usuario su edad y muestre por pantalla todos
los años que ha cumplido (desde 1 hasta su edad).
#>

[int]$edad = Read-Host "Introduce tu edad"
$i = 1

while($i -lt $edad){
    Write-Host $i
    $i++
}