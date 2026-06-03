#!/bin/bash
while true
do
echo "Digite um numero para continuar: "

echo "1 - Agendar consulta"
echo "2 - Listar consulta"
echo "3 - Pesquisar consulta"
echo "4 - Relatorio de consultas"
echo "5 - Cancelar consulta"
echo "6 - Fazer backup"
echo "7 - Sair"

read opcao

case $opcao in

1)
 bash agendar.sh
;;

2)
cat Clinica/consultas/consultas.txt
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
break
;;

*)
echo "Tecla incorreta"
;;

esac
done
