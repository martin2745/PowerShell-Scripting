<#
Ejercicio4
Escribir un programa que pida al usuario un número entero y muestre por pantalla 
si es par o impar.
#>
[int]$numero = Read-Host "Introduce un número para ver si es par o impar"
if($numero % 2 -eq 0){
    Write-Host "El número es par"
} else {
    Write-Host "El número es impar"
}