#!/bin/bash

echo "Relatorio de Consultas:"
if [ -f consultas.txt ]; then
while IFS=";" read -r id nome data horario especialidade
do
echo "ID: $id"
echo "Paciente: $nome"
echo "Data: $data"
echo "Horario: $horario"
echo "Especialidade: $especialidade"
echo ""

done < consultas.txt
else 
echo "Nenhuma consulta cadastrada."
fi

