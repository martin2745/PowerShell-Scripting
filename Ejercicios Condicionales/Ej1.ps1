<#
Ejercicio1
Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es mayor de edad o no.
#>
[int]$edad = Read-Host "Introduce tu edad"

if($edad -lt 18){
    Write-Host "Eres menor de edad"
}
else{
    Write-Host "Eres mayor de edad"
}