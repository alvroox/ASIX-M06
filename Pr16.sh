#!/bin/bash

if [[ $EUID -ne 0 ]]
then
echo -e "El usuario NO es root, por lo que no se permite ejecutar el script"
exit 1
fi

echo -e "\n"
echo "Ingrese el nombre para el nuevo usuario: " #Pedir el nombre de usuario
read nombre
if [ "$nombre" == "" ] ; then
clear
echo -e "\n"
echo "El nombre no puede estar vacío"
echo -e "\n"
exit 1
fi

echo -e "\n"
echo "Numero de telefono  : "
read comment
echo "Dirección  : "
read comment2

password="ausias38"

pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
useradd -m -p $pass $nombre
chage -d 0 $nombre


echo "Los datos ingresados son los siguientes:"
echo "****************************************"
echo -e "\n"
echo "Nombre del usuario: $nombre"
echo "Numero: $comment"
echo "Direccion: $comment2"
echo "la contraseña es: $password"
echo "El usuario fue creado satisfactoriamente"
host=`hostname`
echo "El host desde el que se ha creado es: $host"
echo ${?}

