#!bin/bash

echo "Digite o seu nome:"
read n
echo "Digite o nome do medico:"
read m
echo "Digite o dia que deseja consultar(dd/mm/aaaa):"
read d
echo "Digite a hora que deseja consultar(hh:mm):"
read h

echo "Consulta agendada com sucesso!"
echo "Paciente: $n" >>Clinica/consultas/consultas.txt
echo "Medico: $m" >> Clinica/consultas/consultas.txt
echo "Data: $d" >> Clinica/consultas/consultas.txt
echo "Horario: $h" >> Clinica/consultas/consultas.txt
echo "----------------------------------------------" >> Clinica/consultas/consultas.txt
echo "Digite uma opcao:"

echo "1 - Agendar mais uma consulta"
echo "2 - Voltar para as opcoes"

read opcao

case $opcao in

1)
 bash agendar.sh
;;

2)
bash consulta.sh
;;

*)
echo "Opcao invalida"
;;
esac
