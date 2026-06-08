#!/bin/bash

while true
do
    clear

    echo "===================================="
    echo "      SISTEMA DA CLÍNICA"
    echo "===================================="
    echo
    echo " 1 - Agendar consulta"
    echo " 2 - Listar consultas"
    echo " 3 - Pesquisar consulta"
    echo " 4 - Relatório de consultas"
    echo " 5 - Cancelar consulta"
    echo " 6 - Fazer backup"
    echo " 7 - Sair"
    echo
    echo "===================================="

    read -p "Digite uma opção: " opcao

    echo "------------------------------------"

    case $opcao in
        1)
            bash agendar.sh
            ;;
        2)
            bash listar.sh
            ;;
        3)
            bash pesquisar.sh
            ;;
        4)
            bash relatorio.sh
            ;;
        5)
            bash cancelar.sh
            ;;
        6)
            bash backup.sh
            ;;
        7)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac

    echo
    read -p "Pressione ENTER para continuar..."
done
