#!/bin/bash

# Verificamos que se haya introducido al menos una palabra como argumento
if [ $# -lt 1 ]; then
  echo "Uso: $0 <palabra1> <palabra2> ... <palabraN>"
  exit 1
fi

# Almacenamos las palabras en un array
palabras=("$@")

# Ordenamos alfabéticamente el array
sorted_palabras=($(echo "${palabras[@]}" | tr ' ' '\n' | sort))

# Mostramos las palabras ordenadas
echo "Palabras ordenadas alfabéticamente:"
for palabra in "${sorted_palabras[@]}"; do
  echo "$palabra"
done
