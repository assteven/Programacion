#!/bin/bash

# Función para calcular el factorial de un número
calcular_factorial() {
  num=$1
  factorial=1
  # Bucle para multiplicar el número por todos los números enteros desde 1 hasta el número introducido
  for ((i=1; i<=num; i++)); do
    factorial=$((factorial * i))
  done
  echo "El factorial de $num es: $factorial"
}

# Verificamos que se haya introducido un número como parámetro
if [ $# -ne 1 ]; then
  echo "Uso: $0 <número>"
  exit 1
fi

numero=$1
# Verificamos que el número introducido sea un entero positivo
if ! [[ $numero =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: El parámetro debe ser un número entero positivo."
  exit 1
fi

calcular_factorial $numero
