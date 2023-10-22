#Las listas o Arrays son heterogeneos, es decir,
#podemos tener diferentes tipos de elementos
#en una misma lista

$num = 1.1
$letra = "m"

$array = $num, $letra

Write-Host "Mostramos la primera posici�n del array:" $array[0]
Write-Host "Mostramos la segunda posici�n del array:" $array[1]

$array += 5
Write-Host "Puedo a�adir otro elemento al array: "$array

#Tambien podemos guardar el valor de una variable de un cmdlet
$data = Get-Date
Write-Host "Vamos a ver que tiene data en la primera posici�n:" $data[0]
#Como puedes ver se muestra toda la informaci�n de Get-Date

<#Sin embargo, vamos a usar el comando ipconfig (configuraci�n de red)
  Es interesante fijarse en el siguiente en el formato de la salida ipconfig
  donde cada posici�n del array corresponde a cada una de las filas de informaci�n
#>
$confIp = ipconfig
$confIp
Write-Host "`n`n`n`nCaso curioso este: " $confIp[0]
Write-Host "Caso curioso este: " $confIp[1]
Write-Host "Caso curioso este: " $confIp[4]
Write-Host "Caso curioso este: " $confIp[6]

<#Tambien podemos hablar de elementos a mostrar como en el siguiente de 1,4,6#>
Write-Host "`n`n`n[1,4,6]"
$confIp[1,4,6]

<#Tambien podemos hablar de rangos como en el siguiente caso y obtenemos todo lo 
que esta entre la posici�n 2 y 6. Esto hace que se vean la posici�n[4] y 6 ya que
el resto son renglones vac�os#>
Write-Host "`n`n`n[2..6]"
$confIp[2..6]