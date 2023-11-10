<#
    Case-sensitive (sensible a mayúsculas/minúsculas):
        En una comparación case-sensitive, las letras mayúsculas y minúsculas se consideran 
        distintas. Por ejemplo, "Hola" y "hola" se tratarían como cadenas diferentes.
        Ejemplo en PowerShell: -eq es case-sensitive, por lo que $cadena1 -eq $cadena2 
        consideraría que "Hola" y "hola" no son iguales.

    Case-insensitive (insensible a mayúsculas/minúsculas):
        En una comparación case-insensitive, las letras mayúsculas y minúsculas se tratan
        como equivalentes. Por ejemplo, "Hola" y "hola" se considerarían iguales en una 
        comparación case-insensitive.
        Ejemplo en PowerShell: -ieq es case-insensitive, por lo que $cadena1 -ieq $cadena2
        consideraría que "Hola" y "hola" son iguales.
#>

# Definir dos variables con cadenas de texto
$cadena1 = "Hola, Mundo"
$cadena2 = "hola, mundo"

# Usar el operador -eq para comparar las cadenas de texto de manera exacta (case-sensitive)
if ($cadena1 -eq $cadena2) {
    Write-Host "Las cadenas son iguales (exacta)."
} else {
    Write-Host "Las cadenas no son iguales (exacta)."
}

# Usar el operador -ieq para comparar las cadenas de texto de manera exacta (case-insensitive)
if ($cadena1 -ieq $cadena2) {
    Write-Host "Las cadenas son iguales (insensible a mayúsculas/minúsculas)."
} else {
    Write-Host "Las cadenas no son iguales (insensible a mayúsculas/minúsculas)."
}

# Usar el operador -like para comparar las cadenas de texto con comodines (case-sensitive)
if ($cadena1 -like "Hola,*") {
    Write-Host "La cadena1 comienza con 'Hola'."
} else {
    Write-Host "La cadena1 no comienza con 'Hola'."
}

# Usar el operador -notlike para comparar las cadenas de texto con comodines (case-sensitive)
if ($cadena1 -notlike "*Mundo") {
    Write-Host "La cadena1 no termina con 'Mundo'."
} else {
    Write-Host "La cadena1 termina con 'Mundo'."
}
