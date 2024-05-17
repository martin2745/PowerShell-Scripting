### Tarea a realizar

**Enunciado de la Tarea:**

Crear un script en Windows para particionar un disco de 20GB.

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

#### Parte A

Deberán crear dos archivos: un archivo particionar.bat y un archivo de respuesta para DiskPart (particiones.txt). Crear un archivo .bat que cree el directorio `C:\COSAS` y ejecute DiskPart con el archivo .txt. En el archivo .txt, deben incluirse los comandos para seleccionar el disco, limpiar, crear y formatear las particiones según las especificaciones.

#### Parte B

Realiza el mismo proceso pero en un archivo powerShell llamado particionar.ps1.
