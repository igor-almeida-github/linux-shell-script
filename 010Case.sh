#!/bin/bash

############################################################################################
#
# 010Case.sh - Uso do Case
#
# Autor: Igor Goulart de Almeida
# Data: 27/06/2021
# Descrição: Uso do Case
# Exemplo de uso: ./010Case.sh
#
# Alterações:
#
############################################################################################

#Exemplo da sintaxe do case
#----------------------------start-code-------------
case "$1" in 
	[0-9])
		echo "O parâmetro é um número"
		;;
	[A-Z])
		echo "O parâmetro é uma letra maiúscula"
		;;
	[a-z])
		echo "O parâmetro é uma letra minúscula"
		;;
	*) # default
		echo "O parâmetro é um caracter especial"
esac
		
#----------------------------end-code---------------
