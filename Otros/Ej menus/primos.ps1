function EsPrimo([int]$numero) {
    if ($numero -le 1) {
        return $false
    }
    if ($numero -le 3) {
        return $true
    }
    if ($numero % 2 -eq 0 -or $numero % 3 -eq 0) {
        return $false
    }
    
    $i = 5
    while ($i * $i -le $numero) {
        if ($numero % $i -eq 0 -or $numero % ($i + 2) -eq 0) {
            return $false
        }
        $i += 6
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