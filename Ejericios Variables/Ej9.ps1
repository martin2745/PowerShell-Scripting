<#
Ejercicio 9
Escribir un programa que pida al usuario su peso (en kg) y estatura (en metros), calcule el índice de 
masa corporal y lo almacene en una variable, y muestre por pantalla la frase Tu índice de masa corporal es \<imc> 
donde \<imc> es el índice de masa corporal calculado redondeado con dos decimales.
#>
[float]$peso = Read-Host "Introduce tu peso"
[float]$altura = Read-Host "Introduce tu altura"
[float]$resultado = $peso / [math]::Pow($altura, 2)
$resultado = [math]::Round($resultado, 2)
Write-Host "Tu indice de masa corporal es $resultado"