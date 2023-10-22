<#Ejercicio3
Escribir un programa que pida al usuario un número entero positivo y
muestre por pantalla todos los números impares desde 1 hasta ese número
separados por comas.
#>
[int]$numero = Read-Host "Introduce un numero"
$texto = ""
for($i = 1; $i -lt $numero; $i++){
    if($i%2 -eq 1){
        $texto+=[string]$i + ","
    }
}
Write-Host $texto