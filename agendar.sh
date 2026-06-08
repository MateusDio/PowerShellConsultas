#!/bin/bash

clear

echo "===================================="
echo "      AGENDAMENTO DE CONSULTA"
echo "===================================="

while true
do
    read -p "Digite o nome do paciente: " n

    if [[ "$n" =~ ^[a-zA-Z\ ]+$ ]]
    then
        break
    else
        echo "Nome inválido! Digite apenas letras."
    fi
done

# Nome do médico
while true
do
    read -p "Digite o nome do medico: " m

    if [[ "$m" =~ ^[a-zA-Z\ ]+$ ]]
    then
        break
    else
        echo "Nome inválido! Digite apenas letras."
    fi
done


# Data
while true
do
    read -p "Digite a data (dd/mm/aaaa): " d

    if [[ "$d" =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]
    then
        break
    else
        echo "Data inválida! Exemplo: 15/06/2026"
    fi
done

# Horário
while true
do
    read -p "Digite o horário (hh:mm): " h

    if [[ "$h" =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]]
    then
        break
    else
        echo "Horário inválido! Exemplo: 14:30"
    fi
done

echo
echo "===================================="
echo "   CONSULTA AGENDADA COM SUCESSO!"
echo "===================================="

echo "Paciente: $n" >> Clinica/consultas/consultas.txt
echo "Medico: $m" >> Clinica/consultas/consultas.txt
echo "Data: $d" >> Clinica/consultas/consultas.txt
echo "Horario: $h" >> Clinica/consultas/consultas.txt
echo "----------------------------------------------" >> Clinica/consultas/consultas.txt

echo
echo "1 - Agendar mais uma consulta"
echo "2 - Voltar ao menu principal"
echo
read -p "Digite uma opção: " opcao

case $opcao in
    1)
        bash agendar.sh
    ;;

    2)
        bash consulta.sh
    ;;

    *)
        echo "Opção inválida!"
    ;;
esac
