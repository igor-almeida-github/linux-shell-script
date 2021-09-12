#!/bin/bash

#########################################################
#
# 002Variaveis.sh - Script de Exemplo do uso de 
#                        variáveis
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: 
# Exemplo de uso: ./002Variaveis.sh
#
# Alterações:
#
#########################################################

# Variáveis
DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/igor/Documentos/cursos_udemy/linux_shell_script/arquivos/002/alunos.txt"

# Data hora
clear
echo "===== Meu Primeiro Script ===="
echo ""
echo "Exibir data e hora atual: $DATAHORA"

#Listagem de alunos ordenada
echo "=============================="
echo "Listagem dos Alunos:"
sort $ARQALUNOS

# Modificando a variável DATAHORA
DATAHORA=$(date +%H)
echo "=============================="
echo "Nova hora atual: $DATAHORA"