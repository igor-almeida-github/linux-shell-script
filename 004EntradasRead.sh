#!/bin/bash

#########################################################
#
# 004EntradasRead.sh - Script de Exemplo de entradas
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: Comando read, será feita uma busca no arquivo
#            alunos.txt
# Exemplo de uso: ./004EntradasRead.sh
#
# Alterações:
#
#########################################################

# read -s -> não mostra no terminal

clear

# Variáveis
ARQALUNOS="/home/igor/Documentos/cursos_udemy/linux_shell_script/arquivos/004/alunos.txt"

# Busca do aluno
echo "============ Script de busca de alunos ============"
echo ""
read -p "Por favor, informe o nome do aluno: " ALUNO  #-p permite exibir a mensagem pedindo uma entrada ao usuário
echo ""
NOMECOMPLETO=$(grep $ALUNO $ARQALUNOS)
echo "O nome completo do aluno é: $NOMECOMPLETO"