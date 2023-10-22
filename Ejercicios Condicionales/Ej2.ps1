<#
Ejercicio2
Escribir un programa que almacene la cadena de caracteres contraseña en una variable, pregunte 
al usuario por la contraseña e imprima por pantalla si la contraseña introducida por el usuario
coincide con la guardada en la variable sin tener en cuenta mayúsculas y minúsculas.
#>
$pass = "secreto"
$pass_introducida = Read-Host "Introduce tu contraseña"
if($pass_introducida.ToUpper() -ieq $pass.ToUpper()){
    Write-Host "Contraseña correcta"
}
else {
    Write-Host "Contraseña incorrecta"
}

<#
$pass = "secreto"
$pass_introducida = Read-Host "Introduce tu contraseña"
while($pass_introducida.ToUpper() -ne $pass.ToUpper()){
	Write-Host "Contraseña incorrecta"
	$pass_introducida = Read-Host "Introduce tu contraseña de nuevo"
}
Write-Host “La contraseña es correcta”
#>