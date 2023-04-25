#!/bin/bash

dentro=true

# Funciones que van a hacer la gestión de usuarios

# Función Mostrar usuarios
function mostrar_usuarios() {
  echo "Los usuarios en el sistema son:"
  cut -d: -f1 /etc/passwd
}

# Función información de un usuario
function informacion_un_usuario() {
  echo "Ingrese el nombre del usuario: "
  read nombre_usuario
  echo "La información para el usuario $nombre_usuario es:"
  id $nombre_usuario
  groups $nombre_usuario
}

# Función añadir un nuevo usuario
function anadir_usuario() {
  echo "Ingrese el nombre del nuevo usuario: "
  read nombre_usuario
  sudo adduser $nombre_usuario
}

# Función modificar un usuario
function modificar_usuario() {
  echo "Ingrese el nombre del usuario a modificar: "
  read nombre_usuario
  sudo usermod -aG sudo $nombre_usuario
}

echo "RETO DE GESTIÓN DE USUARIOS "

# Bucle Principal
while $dentro;
do
  # Pregunto al usuario cositas
  echo -e "\n\n---------- GESTIÓN DE USUARIOS -----------\n"
  echo "1- Ver todos los usuarios"
  echo "2- Información de un usuario"
  echo "3- Añadir un nuevo usuario"
  echo "4- Modificar usuario"
  echo "0- Salir"
  echo "Ingresa un número: "
  read numero

  # Hacer cada función de gestión de usuarios
  case $numero in
    1)
      echo "Ver todos los usuarios:"
      mostrar_usuarios
      ;;
    2)
      echo "Información de un usuario en concreto"
      informacion_un_usuario
      ;;
    3)
      echo "Añadir un usuario nuevo"
      anadir_usuario
      ;;
    4)
      echo "Modificar un usuario"
      modificar_usuario
      ;;
    0)
      # Salir de la aplicación
      echo "SALIENDO DE LA APLICACIÓN..."
      dentro=false
      ;;
    *)
      echo "Selecciona un valor correcto!"
      ;;
  esac

done
