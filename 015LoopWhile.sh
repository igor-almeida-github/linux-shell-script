#!/bin/bash

############################################################################################
#
# 015LoopWhile.sh - O loop while
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Teoria sobre o uso do comando while
#
# Exemplo de uso: ./015LoopWhile.sh
#
# Alterações:
#
############################################################################################

# estrutura básica do while
# while <comando-condição>
# do
# 	comando1
# 	comando2
#   ...
# done

# Enquanto x for menor que 20...
# x=1
# while [ $x -le 20 ]
# do
# 	echo O valor atual é $x
# 	x=$(expr $x + 1)
# done

# Conta quantos processos estão em execução, enquanto for menos de 300, tudo ok
# while [ $(ps axu | wc -l) -lt 300 ]
# do
# 	echo "Tudo OK"
# 	sleep 1
# done

# Enquanto o processo estiver em execução...
# while ls /var/lock/processo.lock > /dev/null
# do
# 	echo "Processo em Execução"
# 	sleep 30
# done