<#
Ejercicio5
Para tributar un determinado impuesto se debe ser mayor de 16 años y tener unos ingresos
iguales o superiores a 1000 € mensuales. Escribir un programa que pregunte al usuario su
edad y sus ingresos mensuales y muestre por pantalla si el usuario tiene que tributar o no.
#>
[int]$edad = Read-Host "Introduce tu edad"
[float]$ingresos = Read-Host "Introduce tus ingresos"

if($edad -gt 16 -and $ingresos -ge 1000){
    Write-Host "Tributa"
}
else{
    Write-Host "No tributa"
}