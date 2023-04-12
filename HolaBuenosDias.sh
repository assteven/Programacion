#!/bin/bash

# Verificamos que se haya pasado un archivo como argumento
if [ $# -lt 1 ]; then
  echo "Uso: $0 <ruta_archivo>"
  exit 1
fi

# Obtenemos la ruta del archivo del primer argumento
ruta_archivo="$1"

# Verificamos que el archivo exista
if [ ! -f "$ruta_archivo" ]; then
  echo "El archivo $ruta_archivo no existe"
  exit 1
fi

# Obtenemos la información del archivo
num_lineas=$(wc -l "$ruta_archivo" | awk '{print $1}')
num_palabras=$(wc -w "$ruta_archivo" | awk '{print $1}')
permisos=$(stat -c "%A" "$ruta_archivo")
propietario=$(stat -c "%U" "$ruta_archivo")

# Mostramos la información por pantalla
echo "Información del archivo: $ruta_archivo"
echo "Número de líneas: $num_lineas"
echo "Número de palabras: $num_palabras"
echo "Permisos: $permisos"
echo "Propietario: $propietario"
