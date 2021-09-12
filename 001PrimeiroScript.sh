#!/bin/bash

#########################################################
#
# 001PrimeiroScript.sh - Script de Exemplo do curso de
#                        Shell script
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: Script de exemplo que lê a data e hora
#            atual e exibe a lista de alunos.
# Exemplo de uso: ./001PrimeiroScript.sh
#
# Alterações:
#
#########################################################

# A primeira linha de um script é a indicação de qual 
# interpretador deve ser usado para executar o script

clear
echo "===== Meu Primeiro Script ===="
echo ""
echo -n "Exibir data e hora atual: "
date
echo "=============================="
echo "Listagem dos Alunos:"
sort ./arquivos/001/alunos.txt