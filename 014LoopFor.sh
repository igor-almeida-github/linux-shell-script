#!/bin/bash

############################################################################################
#
# 014LoopFor.sh - O loop For
#
# Autor: Igor Goulart de Almeida
# Data: 01/07/2021
#
# Descrição: Teoria sobre o uso do comando for
#
# Exemplo de uso: ./014LoopFor.sh
#
# Alterações:
#
############################################################################################

# Estrutura básica do for
# for variavel in valor1 valor2 ... valorN
# do
# 	comando1
# 	comando2
# 	...
# done

# Com file globe
# for arquivo in alunos*
# do
# 	echo "$arquivo"
# done

# Com sequência
# for sequencia in $(seq 5 10)
# do 
# 	echo "O número é $sequencia"
# done


# Com sequência usando chaves
# for sequencia in {5..10}
# do 
# 	echo "O número é $sequencia"
# done

# Com cat 
# for i in $(cat arquivo.txt)
# do
# 	echo "O valor é $i"
# done

# sintaxe que vem do c
# for ((i=5; i<=20; i++))
# do
# 	echo "O número é $i"
# done

# for tem internamente algo chamado IFS (interfield separator), que é o separador de campos
# por padrão IFS=$' \t\n', o separador de campos pega todos e qualquer um desses para
# separar os valores para cada iteração.
# ao alterar o IFS, devemos retorna-lo para seu valor padrão ao final
# ex:
# OLDIFS=$IFS
# IFS=:
# for var in $(tail /etc/passwd)
# do
# 	echo "exibindo: $var"
# done
# IFS=$OLDIFS
# set | grep IFS

