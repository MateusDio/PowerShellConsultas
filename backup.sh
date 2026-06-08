#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"
PASTA_BACKUP="Clinica/backup"

clear

echo "===================================="
echo "       BACKUP DE CONSULTAS"
echo "===================================="
echo


if [ -f "$ARQUIVO" ]; then

    DATA=$(date +"%d-%m-%Y_%H-%M-%S") 
    mkdir -p "$PASTA_BACKUP"

    cp "$ARQUIVO" "$PASTA_BACKUP/consultas_backup_$DATA.txt"

    echo "Backup realizado com sucesso!"
    echo "Arquivo salvo em:"
    echo "$PASTA_BACKUP/consultas_backup_$DATA.txt"

else
    echo "Arquivo de consultas não encontrado."
fi

echo
echo "------------------------------------"
read -p "Pressione ENTER para voltar ao menu..."


