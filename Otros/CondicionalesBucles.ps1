#Condicionales

$numero = 0
$valor = 1
$cadena = "dos"

<#
    --------Numeros--------
    -eq : igual
    -ne : no igual
    -gt : mayor
    -ge : mayor igual
    -lt: menor que
    -le : menor igual
    --------Cadenas--------
    -like : igual para cadenas
    -notlike : no igual para cadenas
    --------Conectores--------
    -and : &&
    -or : ||
#>

if( $numero -eq $valor){
    #Sentencia si se cumple
    Write-Host "numero es igual a valor"
}
elseif($numero -gt $valor) {
    #Sentencia si se cumple la condición
    Write-Host "numero es mayor que valor"
}
else{
    #Sentencia si no se cumple la condición
    Write-Host "otro caso diferente"
}

switch ($cadena){
    "uno" {Write-Host "Valor uno"}
    "dos" {Write-Host "Valor dos"}
    default {Write-Host "Valor por defecto"}
}