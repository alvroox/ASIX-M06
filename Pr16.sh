#!/bin/bash

if [[ $EUID -ne 0 ]]
then
echo -e "El usuario NO es root, por lo que no se permite ejecutar el script"
exit 1
fi


echo -e "\n"
echo "Ingrese el nombre para el nuevo usuario: " #Pedir el nombre de usuario
nombre=$1

if [ "$nombre" == "" ] ; then
clear
echo -e "\n"
echo "El nombre no puede estar vacío"
echo -e "\n"
exit 1
fi
comment=${@:2} # para que los demas parametros introducidos por terminal se han ignorados como parametros 


password=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 11 | head -n 1)
#generar contraseña aleatoriamente de 12 caracteres
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
useradd -m -p $pass $nombre
chage -d 0 $nombre
#te obliga a modificar la contraseña cuando se accede a la cuenta
[ $? -eq 0 ] && echo -e "\n\nEl usuario ha sido creado correctamente\n"


echo "Los datos ingresados son los siguientes:"
echo "****************************************"
echo -e "\n"
echo "Nombre del usuario: $nombre"
echo "la contraseña es: $password"
echo "El usuario fue creado satisfactoriamente"
host=`hostname`
echo "El host desde el que se ha creado es: $host"
echo ${?}

