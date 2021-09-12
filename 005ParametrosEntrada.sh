#!/bin/bash

#########################################################
#
# 005ParametrosEntrada.sh - Script de Exemplo de
#                           entradas como parametros
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: Parâmetros são as opções de execução de um comando.
#            Argumentos usados ao executar um comando
# Exemplo de uso: ./005ParametrosEntrada.sh
#
# Alterações:
#
#########################################################

# Ex: man tar ( o tar é um parâmetro do comando man)
# $0 - Nome do Programa
# $# - Quantidade de Parâmetros
# $* - Todos os parâtros inseridos
# $1-9 - Cada um dos parâmetros

echo "O script $0 recebeu $# parâmetros"
echo "Os parâmetros recebidos foram: $*"
echo ""
echo "Parâmetro \$1 = $1"
echo "Parâmetro \$2 = $2"
echo "Parâmetro \$3 = $3"
echo "Parâmetro \$4 = $4"