#!/bin/bash

############################################################################################
#
# 022Funcoes.sh - Teoria sobre funções
#
# Autor: Igor Goulart de Almeida
# Data: 08/07/2021
#
# Descrição: 
#
# Exemplo de uso: ./022Funcoes.sh
#
# Alterações:
#
############################################################################################

# Sintaxe de funções
# function nome-funcao(){
# 	Comandos
# }

# Podemos omitir a keyword function
# nome-funcao(){
# 	Comandos
#}

# Chamando a função
# nome-funcao par1 par2
# VAR1=$(nome-funcao)

# Definição de variável local
# local VAR1="Shell Script"

# Return code funciona como exit code para a função (valor 0 a 255)
# Acessada por $?
# return 10
# echo $?
# return retorna somente da função, mas não retorna do script

# Exemplos
# ----------------------------
# maiuscula () {
# 	echo $1 | tr a-z A-Z
# }

# maiuscula shell
# VAR1=$(maiuscula $1)
# echo $VAR1
# ----------------------------

# Definição global de variável
# ----------------------------
# maiuscula () {
# 	VAR1=$(echo $1 | tr a-z A-Z)
# }

# maiuscula shell
# echo $VAR1
# ----------------------------


# Definição global de local
# ----------------------------
# maiuscula () {
# 	local VAR1=$(echo $1 | tr a-z A-Z)
# }

# maiuscula shell
# echo $VAR1  #Nada
# ----------------------------

# Return
# ----------------------------
# fc () {
# 	return 10
# }

# fc
# echo $?
# ----------------------------


