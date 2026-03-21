#!/bin/bash
while true
do
	if [ -f "$LAB_DIR/salida/$FILENAME.txt" ]
	then
        	:	
	else
        	touch "$LAB_DIR/salida/$FILENAME.txt"
	fi

	for archivo in $LAB_DIR/entrada/*.txt
	do
        	if [ -f "$archivo" ]
        	then
                	cat "$archivo" >> "$LAB_DIR/salida/$FILENAME.txt"
                	mv "$archivo" "$LAB_DIR/procesado"
        	fi
	done
	sleep 5
done
