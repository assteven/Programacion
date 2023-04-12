#!/bin/bash

# Función para calcular el área de un cuadrado
calcular_area_cuadrado() {
  echo "Introduce el lado del cuadrado:"
  read lado
  area=$((lado * lado))
  echo "El área del cuadrado es: $area"
}

# Función para calcular el área de un triángulo
calcular_area_triangulo() {
  echo "Introduce la base del triángulo:"
  read base
  echo "Introduce la altura del triángulo:"
  read altura
  area=$((base * altura / 2))
  echo "El área del triángulo es: $area"
}

# Función para calcular el área de un rectángulo
calcular_area_rectangulo() {
  echo "Introduce la base del rectángulo:"
  read base
  echo "Introduce la altura del rectángulo:"
  read altura
  area=$((base * altura))
  echo "El área del rectángulo es: $area"
}

# Función para calcular el área de un círculo
calcular_area_circulo() {
  echo "Introduce el radio del círculo:"
  read radio
  area=$(echo "3.1416 * $radio * $radio" | bc)  # Utilizamos 'bc' para calcular números decimales
  echo "El área del círculo es: $area"
}

# Bucle para mostrar el menú y procesar la opción seleccionada
while true; do
  echo "Selecciona una opción:"
  echo "1. Calcular el área de un cuadrado"
  echo "2. Calcular el área de un triángulo"
  echo "3. Calcular el área de un rectángulo"
  echo "4. Calcular el área de un círculo"
  echo "5. Salir"
  read opcion

  case $opcion in
    1)
      calcular_area_cuadrado ;;
    2)
      calcular_area_triangulo ;;
    3)
      calcular_area_rectangulo ;;
    4)
      calcular_area_circulo ;;
    5)
      echo "¡Hasta luego!"
      exit 0 ;;
    *)
      echo "Opción inválida. Por favor, selecciona una opción válida." ;;
  esac
done
