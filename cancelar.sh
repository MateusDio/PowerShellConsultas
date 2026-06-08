#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"

clear

echo "===================================="
echo "     CANCELAR CONSULTA"
echo "===================================="
echo

read -p "Digite o nome do paciente: " nome

echo
echo "------------------------------------"

if [ -f "$ARQUIVO" ]; then

    resultado=$(awk -v paciente="$nome" 'BEGIN{IGNORECASE=1}
        /^Paciente: / {
            if ($0 ~ paciente) {
                print $0
                for(i=1;i<=4;i++){ getline; print }
            }
        }' "$ARQUIVO")

    if [ -n "$resultado" ]; then
        echo "Consulta encontrada:"
        echo
        echo "$resultado"
        echo

        read -p "Deseja realmente cancelar esta consulta? (s/n): " resp

        if [ "$resp" = "s" ] || [ "$resp" = "S" ]; then
            awk -v paciente="$nome" 'BEGIN{IGNORECASE=1}
                /^Paciente: / {
                    if ($0 ~ paciente) { skip=5; next }
                }
                skip { skip--; next }
                { print }' "$ARQUIVO" > temp.txt

            mv temp.txt "$ARQUIVO"

            echo "Consulta cancelada com sucesso!"
        else
            echo "Operação cancelada."
        fi

    else
        echo "Nenhuma consulta encontrada para '$nome'."
    fi

else
    echo "Arquivo de consultas não encontrado."
fi

echo
read -p "Pressione ENTER para voltar..."
