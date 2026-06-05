#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"

echo "Cancelar consulta:"
read -p "Digite o nome do paciente: " nome

if [ -f "$ARQUIVO" ]; then

    resultado=$(grep -i -A 3 "Paciente: $nome" "$ARQUIVO")

    if [ -n "$resultado" ]; then

        echo "Consulta encontrada:"
        echo "$resultado"

        read -p "Deseja realmente cancelar esta consulta? (s/n): " resp

        if [ "$resp" = "s" ]; then
            grep -iv -A 3 "Paciente: $nome" "$ARQUIVO" | grep -v "^--$" > temp.txt
            mv temp.txt "$ARQUIVO"
            echo "Consulta cancelada com sucesso!"
        else
            echo "Operacao cancelada."
        fi

    else
        echo "Nenhuma consulta encontrada."
    fi

else
    echo "Arquivo de consultas nao encontrado."
fi
