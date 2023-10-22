<#
Ejercicio 10
Escribir un programa que pida al usuario dos números enteros y muestre por pantalla: La división resultande de 
dividir \<n> entre \<m> da un cociente \<c> y un resto \<r> donde \<n> y \<m> son los números introducidos por el 
usuario, y \<c> y \<r> son el cociente y el resto de la división entera respectivamente.
#>
[int]$numero1 = Read-Host "Introduce un numero"
[int]$numero2 = Read-Host "Introduce un segundo numero"

Write-Host "La división de $numero1 por $numero2 da", ($numero1/$numero2), "con resto ", ($numero1 % $numero2)