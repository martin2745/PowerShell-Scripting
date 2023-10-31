function EsPrimo($numero) {
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
