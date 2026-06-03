#!/bin/bash

echo "Lista de Consultas."

if [ -f consultas.txt ]; then
     cat consultas.txt
else 
echo "Nenhuma consulta cadastrada."
fi

