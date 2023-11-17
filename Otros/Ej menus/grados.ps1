# Función para convertir de Celsius a Fahrenheit
function ConvertirACelsius ($temperaturaF) {
    return (5/9) * ($temperaturaF - 32)
}

# Función para convertir de Fahrenheit a Celsius
function ConvertirAFahrenheit ($temperaturaC) {
    return (9/5) * $temperaturaC + 32
}

# Menú principal
do {
    Write-Host "`nConversor de Temperaturas en PowerShell"
    Write-Host "1. Convertir de Celsius a Fahrenheit"
    Write-Host "2. Convertir de Fahrenheit a Celsius"
    Write-Host "3. Salir"

    [int]$opcion = Read-Host "Ingrese el número de la operación deseada"

    switch ($opcion) {
        1 {
            [float]$temperaturaC = Read-Host "Ingrese la temperatura en grados Celsius"
            [float]$temperaturaF = ConvertirAFahrenheit -temperaturaC $temperaturaC
            Write-Host "Resultado: $temperaturaC grados Celsius son $temperaturaF grados Fahrenheit"
            
        }
        2 {
            [float]$temperaturaF = Read-Host "Ingrese la temperatura en grados Fahrenheit"
            [float]$temperaturaC = ConvertirACelsius -temperaturaF $temperaturaF
            Write-Host "Resultado: $temperaturaF grados Fahrenheit son $temperaturaC grados Celsius"
        }
        3 {
            Write-Host "Saliendo del programa."
        }
        default {
            Write-Host "Opción no válida. Inténtelo de nuevo."
        }
    }
} while ($opcion -ne 3)
