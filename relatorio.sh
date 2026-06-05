#!/bin/bash

ARQUIVO="Clinica/consultas/consultas.txt"
RELATORIO="Clinica/relatorios/relatorio.txt"

if [ -f "$ARQUIVO" ]; then

    total=$(grep -c "Paciente:" "$ARQUIVO")

    echo "===== RELATORIO DA CLINICA =====" > "$RELATORIO"
    echo "" >> "$RELATORIO"
    echo "Total de consultas: $total" >> "$RELATORIO"
    echo "" >> "$RELATORIO"
    echo "CONSULTAS CADASTRADAS:" >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    cat "$ARQUIVO" >> "$RELATORIO"

    echo "Relatorio gerado com sucesso!"
    echo "Arquivo salvo em: $RELATORIO"

    echo "Relatorio gerado com sucesso!"
    echo "=============================="
    cat "$RELATORIO"
    echo "=============================="

else
    echo "Arquivo de consultas nao encontrado."
fi


