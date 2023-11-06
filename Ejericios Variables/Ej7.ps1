<#
Ejercio 7
Escribir un programa que pregunte al usuario por el número de horas trabajadas y el coste por hora.
Después debe mostrar por pantalla la paga que le corresponde.
#>

#NO FUNCIONA
#$paga = Read-Host "Introduce tu sueldo por hora"
#$horas = Read-Host "Introduce las horas trabajadas" 
#Write-Host "Te corresponden: ($paga * $horas)"

<#
    El problema se debe a la forma en que PowerShell interpreta la entrada del usuario en Read-Host. 
    Cuando usas Read-Host, el valor ingresado se toma como una cadena de texto (string) por defecto. 
    Por lo tanto, cuando multiplicas $paga y $horas, PowerShell intenta realizar una concatenación de 
    cadenas en lugar de realizar una multiplicación aritmética.
#>

#SI FUNCIONA
#$paga = Read-Host "Introduce tu sueldo por hora"
#$horas = Read-Host "Introduce las horas trabajadas" 
#Write-Host "Te corresponden: $($paga * $horas)"

<#
    El código funciona correctamente porque utilizamos el operador $($...) para  realizar la operación 
    de multiplicación dentro de la instrucción Write-Host.
    El uso de $($...) permite evaluar una expresión dentro de una cadena y asegura que la multiplicación
    se realice como una operación aritmética.
#>

#SI FUNCIONA
#$paga = Read-Host "Introduce tu sueldo por hora"
#$horas = Read-Host "Introduce las horas trabajadas" 
#$total = $paga * $horas
#Write-Host "Te corresponden: $total"

<#
    El código no declara las variables explícitamente, pero funciona debido a la interpretación automática
    de PowerShell. Cuando asignas valores directamente a $paga y $horas a través de Read-Host, PowerShell
    detecta automáticamente que los valores ingresados son números y realiza la multiplicación de manera
    adecuada.
#>

#SI FUNCIONA
[int]$paga = Read-Host "Introduce tu sueldo por hora"
[int]$horas = Read-Host "Introduce las horas trabajadas" 
[int]$total = $paga * $horas
Write-Host "Te corresponden: $total"

<#
    Para evitar problemas declaro la entrada como un tipo de variable concreto. Al declaras las variables
    $paga, $horas y $total como [int], lo que fuerza a PowerShell a tratarlos como números enteros.
    Al hacerlo, garantizas que las variables contengan valores numéricos, lo que permite realizar operaciones
    aritméticas.
#>