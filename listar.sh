#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"

clear

echo "===================================="
echo "       LISTAR CONSULTAS"
echo "===================================="
echo

if [ -f "$ARQUIVO" ]
then
    cat "$ARQUIVO"
else
    echo "Nenhuma consulta cadastrada."
fi

echo
echo "------------------------------------"
read -p "Pressione ENTER para voltar ao menu..."
