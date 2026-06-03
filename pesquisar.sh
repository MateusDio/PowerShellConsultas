#!/bin/bash

echo "Pesquisar consultas:"
read -p "Digite o nome do paciente: " nome 

if [ -f Clinica/consultas/consultas.txt ]; then
    resultado=$(grep -i "$nome" Clinica/consultas/consultas.txt)

if [ -n "$resultado" ]; then
echo "Consulta(s) encontrada(s):"
echo "$resultado"
else
echo "Nenhuma consulta encontrada."
fi
else 
echo "Arquivo de consultas nao encontrado."
fi
