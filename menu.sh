#!/bin/bash
LAB_DIR="$HOME/EPNro1"
ENTRADA="$HOME/EPNro1/entrada"
SALIDA="$HOME/EPNro1/salida"
PROCESADO="$HOME/EPNro1/procesado"

mostrar_menu(){
      echo "---------------------------------"
      echo "            TP1 - MENU           "
      echo "---------------------------------"
      echo "1- Creación de entorno"
      echo "2- Ejecutar backgound"
      echo "3- Ejecutar un comando"
      echo "4- Ver arbol del directorio"
      echo "5- Listar archivos comprimidos"
      echo "6- Salir"
      echo"----------------------------------"
}

if [ "$1" == "-d"]; then
      echo "Borrando el entorno.."
      rm -rf "$LAB_DIR" 
      echo "Ha sido elimnado correctamente"
      exit 0
fi

while true; do 
      mostrar_menu
      read OPCION
    
     case $OPCION in
          1) 
            echo "Opcion 1"
            ;;
          2) 
            echo "Opcion 2"
            ;;
          3) if [ -f "$SALIDA/$FILENAME.txt" ]; then
                sort -n -k1 "$SALIDA/$FILENAME.txt"
             else
                echo "No existe el archivo $FILENAME.txt en la carpeta en la carpeta de salida"    
             fi
             ;;
            
          6) 
            echo "Saliendo.."
            break
           ;;
      esac 
done     
