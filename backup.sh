#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"
PASTA_BACKUP="Clinica/backup"

if [ -f "$ARQUIVO" ]; then

    DATA=$(date +"%d-%m-%Y_%H-%M-%S")

    cp "$ARQUIVO" "$PASTA_BACKUP/consultas_backup_$DATA.txt"

    echo "Backup realizado com sucesso!"
    echo "Arquivo salvo em:"
    echo "$PASTA_BACKUP/consultas_backup_$DATA.txt"

else
    echo "Arquivo de consultas nao encontrado."
fi
