#!/bin/bash

clear

echo "===================================="
echo "      PESQUISAR CONSULTA"
echo "===================================="
echo

read -p "Digite o nome do paciente: " nome

echo
echo "------------------------------------"

if [ -f Clinica/consultas/consultas.txt ]
then
    resultado=$(grep -i -A 4 "^Paciente: $nome$" Clinica/consultas/consultas.txt)

    if [ -n "$resultado" ]
    then
        echo "Consulta encontrada:"
        echo
        echo "$resultado"
    else
        echo "Nenhuma consulta encontrada para '$nome'."
    fi
else
    echo "Arquivo de consultas não encontrado."
fi

echo
echo "------------------------------------"
read -p "Pressione ENTER para voltar ao menu..."

