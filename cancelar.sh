#!/bin/bash

echo "Cancelar consulta:"
read -p "Digite o nome do paciente: " nome

if [ -f consultas.txt ]; then
grep -i "$nome" consultas.txt

read -p "Deseja realmente cancelar esta(s) consulta(s)? (s/n): " resp

if [ "$resp" = "s" ]; then
grep -iv  "$nome" consultas.txt > temp.txt
mv temp.txt consultas.txt
echo "Consulta(s) cancelada(s) com sucesso!"
else
echo "Operacao cancelada."
fi
else
echo "Arquivo de consultas nao encontrado."
fi

