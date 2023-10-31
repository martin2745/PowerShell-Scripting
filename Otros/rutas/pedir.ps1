# Cargar el archivo de funciones
#. C:\Users\gilbl\Escritorio\powerShellFunciones\primos.ps1
$scriptPath = Join-Path -Path $PSScriptRoot -ChildPath "\otro\primos.ps1"
. $scriptPath

# Ingresa el número que deseas verificar si es primo
[int]$numero = Read-Host "Ingresa un número"

if (EsPrimo($numero)) {
    Write-Host "$numero es un número primo."
} else {
    Write-Host "$numero no es un número primo."
}
