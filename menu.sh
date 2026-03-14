#!/bin/bash

# Definimos las rutas acá arriba. Si mañana el profe pide cambiar el nombre de la carpeta, lo cambiamos en un solo lugar.
# Para el que haga el punto 2, dejo el script consolidar.sh dentro de una variable para laburar de manera más comoda.

LAB_DIR="$HOME/EPNro1"
SCRIPT_CONSOLIDAR="./consolidar.sh"

# Separar el texto del menú en una función hace que el "while" sea mucho más fácil de leer.

mostrar_menu() {
    echo ""
    echo "=========================================="
    echo "              TP1 - MENU"
    echo "=========================================="
    echo "1) Instalación (Crear carpetas y mover script)"
    echo "2) Consolidación (Ejecutar en background)"
    echo "3) Ejecutar un comando (Ingreso libre)"
    echo "4) Ver árbol de directorios"
    echo "5) Listar archivos comprimidos"
    echo "6) Salir"
    echo "=========================================="
    echo -n "Seleccione una opción: " # El -n es solo un salto de linea como el \n.
}

if [ "$1" == "-d" ]; then

    # parámetro optativo -d. Si el usuario corre el script con el parámetro optativo -d se borrará todo el entorno creado en la carpeta EPNro1 y se matarán los procesos creados en background.
    # En teoria esto deberia funcionar para el borrado con el parametro -d.

    echo "Empezando a borrar el entorno..."
    rm -rf "$LAB_DIR"
    echo "Borrado concluido"
    exit 0
fi

while true; do

    mostrar_menu
    read OPCION
    
    case $OPCION in
        1)
            echo "Iniciando instalación..."
            mkdir -p "$LAB_DIR/entrada" "$LAB_DIR/salida" "$LAB_DIR/procesado" # El flag -p crea la carpeta padre si no existe y no da error si ya existe.
            
            # Verificamos si el script existe antes de copiarlo, si no existe tira error y nos devuelve al menu.
            if [ -f "$SCRIPT_CONSOLIDAR" ]; then
                cp "$SCRIPT_CONSOLIDAR" "$LAB_DIR/"
                chmod +x "$LAB_DIR/consolidar.sh"
                echo "Instalación completada en $LAB_DIR"
            else
                echo "Error: No se encontró el archivo $SCRIPT_CONSOLIDAR"
            fi
            ;;

        2)
            echo "Lanzando consolidación en segundo plano..."
            # Ejecutar el script, punto 2
            echo "hola2"
            ;;

        3)
            # Listar alumnos padron, punto 3.
            echo "hola3"
            ;;

        4)
            # Top 10 notas, punto 4
            echo "hola4"
            ;;

        5)
            # Buscar por padron, punto 5.
            echo "hola5"
            ;;

        6)
            echo "Saliendo del sistema..."
            break
            ;;

        *)
            echo "Opción '$OPCION' no válida. Intente nuevamente."
            ;;
    esac
done
