function EsPrimo($numero) {
    if ($numero -le 1) {
        return $false
    }
    if ($numero -eq 2) {
        return $true
    }
    
    for ($i = 2; $i -lt $numero; $i++) {
        if ($numero % $i -eq 0) {
            return $false
        }
    }
    
    return $true
}

# Ingresa el número que deseas verificar si es primo
[int]$numero = Read-Host "Ingresa un número"

if (EsPrimo($numero)) {
    Write-Host "$numero es un número primo."
} else {
    Write-Host "$numero no es un número primo."
}