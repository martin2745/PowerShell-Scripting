<# Ejercicio 6
Escribir un programa que realice la siguiente operación aritmética: ((3+2)/(2*5))^2
#>
$operacion = (3+2)/(2*5)
Write-Host ([math]::Pow($operacion , 2))