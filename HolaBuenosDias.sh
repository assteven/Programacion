#!/bin/bash

# Solicitamos la ruta del directorio
read -p "Introduce la ruta del directorio: " ruta_directorio

# Validamos que la ruta introducida sea un directorio
if [ ! -d "$ruta_directorio" ]; then
  echo "La ruta introducida no es un directorio válido"
  exit 1
fi

# Contadores para archivos y directorios
num_archivos=0
num_directorios=0

# Recorremos el directorio y contamos archivos y directorios
for elemento in "$ruta_directorio"/*; do
  if [ -f "$elemento" ]; then
    ((num_archivos++))
  elif [ -d "$elemento" ]; then
    ((num_directorios++))
  fi
done

# Mostramos la información por pantalla
echo "En el directorio $ruta_directorio:"
echo "Número de archivos: $num_archivos"
echo "Número de directorios: $num_directorios"
