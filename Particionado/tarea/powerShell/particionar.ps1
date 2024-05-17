#PS C:\Users\si> Get-Disk
#Disco de trabajo
$numDisco=1

#Borrar contenido del disco
Clear-Disk -Number $numDisco -RemoveData -Confirm:$false 2>$null

#Establecemos el tipo de particionado
Initialize-Disk -Number $numDisco -PartitionStyle MBR

#Creamos la partición primaria de 10GiB y la letra V
New-Partition -DiskNumber $numDisco -DriveLetter V -Size 10GB

#Asignamos el sistema de fichero NTFS y la etiqueta "DATOS"
Format-Volume -DriveLetter V -FileSystem NTFS -NewFileSystemLabel "DATOS"

# Partición extendida que ocupe el resto
New-Partition -DiskNumber $numDisco -MbrType Extended -UseMaximumSize

#Partición lógica de 5GiB y la letra W
New-Partition -DiskNumber $numDisco -DriveLetter W -Size 5GB

#Asignamos el sistema de ficheros NTFS y la etiqueta "ALMACEN"
Format-Volume -DriveLetter W -FileSystem NTFS -NewFileSystemLabel "ALMACEN"

#Comprobamos si no existe la carpeta C:/Cosas
$idCosas="C:/Cosas"

if(!(Test-Path $idCosas)){
    New-Item $idCosas -ItemType Directory
}else{
    Write-Host "$idCosas ya existe"
}

#La partición creada será la 3 del disco 1
$numParticion=3

#Asignamos el sistema de ficheros exFAT y la etiqueta "INTERCAMBIO"
New-Partition -DiskNumber $numDisco -UseMaximumSize
Get-Partition -DiskNumber $numDisco -PartitionNumber $numParticion | Format-Volume -FileSystem exFAT -NewFileSystemLabel "INTERCAMBIO"
Add-PartitionAccessPath -DiskNumber $numDisco -PartitionNumber $numParticion -AccessPath $idCosas