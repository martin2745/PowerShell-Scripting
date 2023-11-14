# Generar un número aleatorio entre 1 y 100
$numeroSecreto = Get-Random -Minimum 1 -Maximum 101

# Inicializar el número de intentos
$intentos = 0

Write-Host "¡Bienvenido al juego de adivinanza!"
Write-Host "Intenta adivinar el número secreto entre 1 y 100."

# Bucle principal del juego
do {
    # Solicitar al usuario que ingrese un número
    [int]$adivinanza = Read-Host "Ingresa tu adivinanza"

    # Verificar si la entrada está en el rango válido
    if ($adivinanza -ge 1 -and $adivinanza -le 100) {
        $intentos++
        
        # Comparar la adivinanza con el número secreto
        if ($adivinanza -eq $numeroSecreto) {
            Write-Host "¡Felicidades! Adivinaste el número en $intentos intentos."
        }
        elseif ($adivinanza -lt $numeroSecreto) {
            Write-Host "El número secreto es mayor. Intenta de nuevo."
        }
        else {
            Write-Host "El número secreto es menor. Intenta de nuevo."
        }
    }
    else {
        Write-Host "Por favor, ingresa un número entre 1 y 100."
    }
} while ($adivinanza -ne $numeroSecreto)
