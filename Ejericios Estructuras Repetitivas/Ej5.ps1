<#
Ejercicio5
Escribir un programa que pida al usuario un número entero y muestre por
pantalla un triángulo rectángulo como el de más abajo, de altura el
número introducido.
```
*
**
***
****
*****

#>
[int]$numero = Read-Host "Introduce un numero"
$salida = ""
for($i = 0; $i -lt $numero; $i++){
    $salida+="*"
    Write-Host $salida
}