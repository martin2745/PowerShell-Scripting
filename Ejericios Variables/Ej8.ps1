<#
Ejercicio 8
Escribir un programa que lea un entero positivo, n, introducido por el usuario y después muestre en pantalla la suma de todos los
enteros desde 1 hasta n. La suma de los n primeros enteros positivos puede ser calculada de la siguiente forma: suma = n(n+1)/2
#>
[int]$numero = Read-Host "Introduce un numero"
$resultado = $numero * ($numero + 1) / 2
Write-Host $resultado