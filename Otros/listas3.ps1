# Crear una lista de números
$listaNumeros = @(1, 2, 3, 4, 5)

# Crear una lista de cadenas
$listaCadenas = @("Manzana", "Banana", "Cereza", "Damasco")

# Acceder a elementos de la lista
$primerElemento = $listaNumeros[0]
$segundoElemento = $listaCadenas[1]

# Iterar a través de la lista
foreach ($numero in $listaNumeros) {
    Write-Host "Número: $numero"
}

foreach ($fruta in $listaCadenas) {
    Write-Host "Fruta: $fruta"
}

# Agregar elementos a la lista
$listaNumeros += 6
$listaCadenas += "Uva"


# Obtener la longitud de la lista
$longitudListaNumeros = $listaNumeros.Length
$longitudListaCadenas = $listaCadenas.Length

Write-Host "La longitud de las listas es: " $longitudListaNumeros " y " $longitudListaCadenas

