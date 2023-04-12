#!/bin/bash

# Verificar que se haya suministrado un año como parámetro
if [ $# -eq 0 ]; then
  echo "Error: Debes suministrar un año como parámetro."
  exit 1
fi

# Obtener el año del primer parámetro
anio=$1

# Verificar si el año es bisiesto o no
if ((anio % 4 == 0 && anio % 100 != 0)) || ((anio % 400 == 0)); then
  echo "$anio es un año bisiesto."
else
  echo "$anio no es un año bisiesto."
fi
