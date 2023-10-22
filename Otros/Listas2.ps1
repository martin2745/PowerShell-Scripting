#Tambien podemos trabajar con objetos para crear las listas
$lista = New-Object System.Collections.ArrayList
$lista.Add("Martín")
$lista.Add("Ana")


<#Con la redirección a null evitamos que se muestre la posición 
de la lista donde se añade el elemento#>
$lista2 = New-Object System.Collections.ArrayList
$lista2.Add("Martín") > $null
$lista2.Add("Ana") > $null
$lista2.Add(3) > $null

Write-Host "`n`nVamos a mostrar la información de la lista:" $lista2

#Tambien puedo eliminar el elemento
$lista2.Remove(3)
Write-Host "`n`nVamos a mostrar la información de la lista:" $lista2

#O eliminarlo por posición
$lista2.RemoveAt(1)
Write-Host "`n`nVamos a mostrar la información de la lista:" $lista2

#Podemos eliminar un rango de elementos
$lista2.Add(1) > $null
$lista2.Add(2) > $null
$lista2.Add(3) > $null
$lista2

Write-Host "`n`nVamos a eliminar ahora un rango de elementos"
#Desde la primera posición (elemento 1) elimina dos elementos (el 1 y 2)
$lista2.RemoveRange(1,2)
$lista2

#Tambien tenemos el método clear que elimina todos los elementos de una lista
$lista.clear()
$lista2.clear()