function Sumar ([int]$num1, [int]$num2) {
    return $num1 + $num2
}

Write-Host "Suma"
[int]$numero1 = Read-Host "Ingrese el primer número"
[int]$numero2 = Read-Host "Ingrese el segundo número"
Write-Host "Resultado: " $(Sumar $numero1 $numero2)