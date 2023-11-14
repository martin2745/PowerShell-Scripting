# Función para realizar la suma
function Sumar ($num1, $num2) {
    return $num1 + $num2
}

# Función para realizar la resta
function Restar ($num1, $num2) {
    return $num1 - $num2
}

# Función para realizar la multiplicación
function Multiplicar ($num1, $num2) {
    return $num1 * $num2
}

# Función para realizar la división
function Dividir ($num1, $num2) {
    if ($num2 -eq 0) {
        Write-Host "Error: No se puede dividir por cero."
    } else {
        return $num1 / $num2
    }
}

function Menu(){
    # Menú de la calculadora
    Write-Host "`nCalculadora en PowerShell"
    Write-Host "1. Suma"
    Write-Host "2. Resta"
    Write-Host "3. Multiplicación"
    Write-Host "4. División"
    Write-Host "5. Salir"

    # Solicitar al usuario que elija una operación
    [int]$opcion = Read-Host "Ingrese el número de la operación deseada"

    return $opcion
}

[int]$opcion = Menu
if($opcion -ne 5){
    # Solicitar al usuario que ingrese dos números
    [double]$numero1 = Read-Host "Ingrese el primer número"
    [double]$numero2 = Read-Host "Ingrese el segundo número"

    # Realizar la operación seleccionada
    while($opcion -ne 5){
        switch ($opcion) {
            1 {Write-Host "Resultado:" $(Sumar $numero1 $numero2)}
            2 {Write-Host "Resultado:" $(Restar $numero1 $numero2)}
            3 {Write-Host "Resultado:" $(Multiplicar $numero1 $numero2)}
            4 {Write-Host "Resultado:" $(Dividir $numero1 $numero2)}
            5 {Write-Host "Ha salido del sistema"}
            default {Write-Host "Opción no válida"}
        }
        $opcion = Menu
        if($opcion -ne 5){
            # Solicitar al usuario que ingrese dos números
            [double]$numero1 = Read-Host "Ingrese el primer número"
            [double]$numero2 = Read-Host "Ingrese el segundo número"
        }
    }
}else{
    Write-Host "Ha salido del sistema"
}