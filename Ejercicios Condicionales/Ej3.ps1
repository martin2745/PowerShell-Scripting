<#
Ejercicio3
Escribir un programa que pida al usuario dos números y muestre por pantalla su división. 
Si el divisor es cero el programa debe mostrar un error.
#>
[int]$numero1 = Read-Host "Primer número de la división"
[int]$numero2 = Read-Host "Segundo número de la división"

if($numero2 -eq 0){
    Write-Host "El divisor no puede ser 0"
}else{
    $resultado = $numero1 / $numero2
    Write-Host $resultado
}