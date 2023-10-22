<#
Ejercicio6
Escribir un programa que muestre por pantalla la tabla de multiplicar del 1 al 10.
#>
for($i = 1; $i -le 10; $i++){
    Write-Host "Tabla de $i : "
    for($b = 1; $b -le 10; $b++){
        Write-Host "$i * $b = " , ($i * $b)
    }
    Write-Host "-------"
}