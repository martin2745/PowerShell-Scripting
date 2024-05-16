### Particionado en windows con diskpart

Diskpart es un gestor de particiones por línea de comandos que forma parte de los sistemas Windows de Servidor y Escritorio.
Permite realizar las mismas operaciones que hacemos desde el  Administrador de disco.

Una característica interesante del Diskpart es que es posible crear scripts. A continuación se recogen los principales comando de `diskpart`.

- `diskpart`: Iniciamos diskpart.
- `clean`: Borra la tabla de particiones del disco seleccionado pero no borra los datos en la superficie del disco. Esto hace que la información del disco sea recuperable.
- `clean all`: Borra la tabla de particiones del disco seleccionado pero no borra los datos en la superficie del disco imposibilitando la recuperación de los datos.
- `list disk`: Listar discos.
- `select disk`: Muestra el disco seleccionado.
- `select disk N`: Seleccionamos el disco.
- `list partition`: Mostramos la tabla de particiones del disco.
- `create partition (primary|extended|logical) size=20000`: Permite crear la partición primaria de 20000MB. Si no indicamos el tamaño, cogeremos el resto de espacio en disco.
- `select partition N`: Selecciona una partición en concreto.
- `format fs=fat32 quick`: Asignamos el sistema de ficheros para la partición.
- `assign letter=A`: Permite asignar un punto de montaje a nuestra partición para su uso.
- `delete partition`: Eliminamos la partición seleccionada. Es necesario tener una partición seleccionada para su eliminación.
- `convert (MBR|GPT)`: Podemos indicar el tipo de particionado que queremos realizar.

1. Iniciamos `diskpart`.

```powershell
C:\Users\si>diskpart
```

```powershell
Microsoft DiskPart versión 10.0.19041.964

Copyright (C) Microsoft Corporation.
En el equipo: DESKTOP-CCMLKKE

DISKPART>
```

2. Listamos los discos.
   
```powershell
DISKPART> list disk

  Núm Disco  Estado      Tamaño   Disp     Din  Gpt
  ---------- ----------  -------  -------  ---  ---
  Disco 0    En línea         50 GB  1024 KB        *
  Disco 1    En línea         50 GB    50 GB
```

3. Seleccionamos el disco.

```powershell
DISKPART> select disk 1

El disco 1 es ahora el disco seleccionado.
```

4. Vemos que el disco seleccionado es el 1.

```powershell
DISKPART> select disk

Los argumentos especificados para este comando no son válidos.
Para obtener más información acerca del comando, escriba: HELP SELECT DISK

El disco 1 es ahora el disco seleccionado.
```

5. Mostramos sus particiones y vemos que hasta este punto no existen.

```powershell
DISKPART> list partition

No hay particiones en este disco para mostrar.
```

6. Vamos a crear una particion primaria de 20000MB en nuestro disco.

```powershell
DISKPART> create partition primary size=20000

DiskPart ha creado satisfactoriamente la partición especificada.
```

7. Si vemos la tabla de particiones actualmente tenemos una partición creada.

```powershell
DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
* Partición 1    Principal           19 GB  1024 KB
```

8. Asignamos al disco un sistema de fichero de tipo FAT32.

```powershell
DISKPART> format fs=fat32 quick

  100 por ciento completado

DiskPart formateó el volumen correctamente.
```

9. Creamos una partición extendida con el resto del espacio del disco.

```powershell
DISKPART> create partition extended

DiskPart ha creado satisfactoriamente la partición especificada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
* Partición 0    Extendido           30 GB    19 GB
```

10. Vamos a crear tres particiones lógica. Pongamos atención a que el tamaño que asignamos para **Particion 2** es 10000MiB, lo cual no son 10GiB. En el caso de **Particion 3** y **Particion 4** asignamos un **size=10240** que da un total de 10BiB.

```powershell
DISKPART> create partition logical size=10000

DiskPart ha creado satisfactoriamente la partición especificada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
* Partición 2    Lógico               9 GB    19 GB

DISKPART> create partition logical size=10240

DiskPart ha creado satisfactoriamente la partición especificada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
  Partición 2    Lógico               9 GB    19 GB
* Partición 3    Lógico              10 GB    29 GB

DISKPART> create partition logical size=10240

DiskPart ha creado satisfactoriamente la partición especificada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
  Partición 2    Lógico               9 GB    19 GB
  Partición 3    Lógico              10 GB    29 GB
* Partición 4    Lógico              10 GB    39 GB
```

11. A continuación vamos a seleccionar la partición 2 y asignarle como sistema de ficheros `ntfs`.

```powershell
DISKPART> select partition 2

La partición 2 es ahora la partición seleccionada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
* Partición 2    Lógico               9 GB    19 GB
  Partición 3    Lógico              10 GB    29 GB
  Partición 4    Lógico              10 GB    39 GB

DISKPART> format fs=ntfs quick

  100 por ciento completado

DiskPart formateó el volumen correctamente.
```

12. Vamos a proceder a eliminar las particiones 3 y 4.

```powershell
DISKPART> select partition 4

La partición 4 es ahora la partición seleccionada.

DISKPART> delete partition

DiskPart eliminó correctamente la partición seleccionada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
  Partición 2    Lógico               9 GB    19 GB
  Partición 3    Lógico              10 GB    29 GB

DISKPART> select partition 3

La partición 3 es ahora la partición seleccionada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
  Partición 2    Lógico               9 GB    19 GB
* Partición 3    Lógico              10 GB    29 GB

DISKPART> delete partition

DiskPart eliminó correctamente la partición seleccionada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
  Partición 2    Lógico               9 GB    19 GB
```

13. Por último vamos a asignarle una letra a cada partición correspondiente para poder utilizarlas como sistema de almacenamiento. De este modo tendremos nuestro punto de montaje para esta partición en la letra correspondiente.

```powershell
DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Principal           19 GB  1024 KB
  Partición 0    Extendido           30 GB    19 GB
* Partición 2    Lógico               9 GB    19 GB

DISKPART> select partition 1

La partición 1 es ahora la partición seleccionada.

DISKPART> assign letter=A

DiskPart asignó correctamente una letra de unidad o punto de montaje.

DISKPART> select partition 2

La partición 2 es ahora la partición seleccionada.

DISKPART> assign letter=B

DiskPart asignó correctamente una letra de unidad o punto de montaje.
```

14. Llegados a este punto puede ser interesante convertir nuestro disco con formato **MBR** a particionado **GPT**. Para ello tendremos que borrar primero la tabla de particiones y posteriormente proceder a su conversión. Es importante decir que las particiones en **GPT** se van a nombrar siempre como primarias. Vamos a crear una partición de 20GiB con un sistema de fciheros **NTFS** y asignarle la letra E.

```powershell
DISKPART> list disk

  Núm Disco  Estado      Tamaño   Disp     Din  Gpt
  ---------- ----------  -------  -------  ---  ---
  Disco 0    En línea         50 GB  1024 KB        *
  Disco 1    En línea         50 GB  2048 KB

DISKPART> select disk 1

El disco 1 es ahora el disco seleccionado.

DISKPART> clean

DiskPart ha limpiado el disco satisfactoriamente.

DISKPART> convert GPT

DiskPart convirtió correctamente el disco seleccionado en el formato GPT.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Reservado           15 MB    17 KB

DISKPART> create partition primary size=20480

DiskPart ha creado satisfactoriamente la partición especificada.

DISKPART> list partition

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Reservado           15 MB    17 KB
* Partición 2    Principal           20 GB    16 MB

DISKPART> format fs=ntfs quick

  100 por ciento completado

DiskPart formateó el volumen correctamente.

DISKPART> assign letter=E

DiskPart asignó correctamente una letra de unidad o punto de montaje.
```

---

### Tarea a realizar

**Enunciado de la Tarea:**

Crear un script en Windows para particionar un disco de 20GB. Deberán crear dos archivos: un archivo particionar.bat y un archivo de respuesta para DiskPart (particiones.txt).

### Detalles de las Particiones:

1. **Primaria:**
   - Tamaño: 10 GiB
   - Sistema de ficheros: NTFS
   - Etiqueta: "DATOS"
   - Letra: V

2. **Extendida:**
   - Contendrá dos particiones lógicas.

3. **Primera Lógica:**
   - Tamaño: 5 GiB
   - Sistema de ficheros: NTFS
   - Etiqueta: "Almacen"
   - Letra: W

4. **Segunda Lógica:**
   - Tamaño: Restante del disco
   - Sistema de ficheros: FAT32
   - Etiqueta: "Intercambio"
   - Punto de montaje: C:\COSAS

Crear un archivo .bat que cree el directorio `C:\COSAS` y ejecute DiskPart con el archivo .txt. En el archivo .txt, deben incluirse los comandos para seleccionar el disco, limpiar, crear y formatear las particiones según las especificaciones.