<#
Ejercicio4
Escribir un programa que pida al usuario un número entero positivo y
muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.
#>
[int]$numero = Read-Host "Introduce un numero"
$salida = ""
for($i=$numero; $i -ge 0; $i--){
    $salida+=[string]$i + ","
}
Write-Host $salida