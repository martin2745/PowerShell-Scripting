<#
Ejercio 7
Escribir un programa que pregunte al usuario por el número de horas trabajadas y el coste por hora.
Después debe mostrar por pantalla la paga que le corresponde.
#>
[float]$paga = Read-Host "Introduce tu sueldo por hora"
[int]$horas = Read-Host "Introduce las horas trabajadas"
$total = $paga * $horas
Write-Host "Te corresponden $total"