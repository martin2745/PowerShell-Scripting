<#Ejercicio7
Los tramos impositivos para la declaración de la renta en un determinado país
son los siguientes:
```Renta    Tipo impositivo
Menos de 10000€    5%
Entre 10000€ y 20000€    15%
Entre 20000€ y 35000€    20%
Entre 350000€ y 60000€    30%
Más de 60000€    45%
```
Escribir un programa que pregunte al usuario su renta anual y muestre por pantalla
el tipo impositivo que le corresponde.
#>
[float]$renta = Read-Host "Introduce tu renta anual"
$porcentaje = $false
if($renta -lt 10000){
    $porcentaje = "5%"
}elseif($renta -lt 20000){
    $porcentaje = "15%"
}elseif($renta -lt 35000){
    $porcentaje = "20%"
}elseif($renta -lt 60000){
    $porcentaje = "30%"
}else{
    $porcentaje = "45%"
}
Write-Host "Te corresponde un $porcentaje"