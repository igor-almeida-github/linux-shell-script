#!/bin/bash

############################################################################################
#
# 023Exercicio1Funcoes.sh - Exercício 1 sobre funções
#
# Autor: Igor Goulart de Almeida
# Data: 08/07/2021
#
# Descrição: Crie um script que receba uma opção e uma data, as opções serão as
# seguintes:
# • -f <DATA>: Retorna 0 para data no formato BR (DD/MM/YYYY ou
# DDMMYYY), 1 para formato US (MM/DD/YYYY ou MMDDYYYY), 2 quando
# não é possível determinar (Exemplo 12/12/1990) e 3 quando o dia e mês
# são inválidos (Exemplo 30/30/1990)
# -i <DATA>: Inverte a data de formato BR para US ou de US para BR.
# Sempre inclui barras.
# • -b <DATA>: Inclui as barras de data. Validar se o formato
# • -e <DATA>: Exibe a data em formato extenso. Exemplo de 13081918
# para 13 de Agosto de 1981"
# • --help: Exibir o help do comando
# Cada opção deve ser implementada através de uma função.
#
# Exemplo de uso: ./023Exercicio1Funcoes.sh
#
# Alterações:
#
############################################################################################

# Extrai os campos da data
data_extrair_campos(){

	if [ $(echo $1 | cut -c3) == '/' ]
	then
		# Sintaxe de data com barra
		CAMPO1=$(echo $1 | cut -d'/' -f1)
		CAMPO2=$(echo $1 | cut -d'/' -f2)
		ANO=$(echo $1 | cut -d'/' -f3)
	else 
		# Sintaxe de data sem barra
		CAMPO1=$(echo $1 | cut -c1-2)
		CAMPO2=$(echo $1 | cut -c3-4)
		ANO=$(echo $1 | cut -c5-8)
	fi
	
}

# Nome do mês a partir do número
nome_do_mes(){

	case "$1" in 
	01)
		echo Janeiro
		;;
	02)
		echo Fevereiro
		;;
	03)
		echo Março
		;;
	04)
		echo Abril
		;;
	05)
		echo Maio
		;;
	06)
		echo Junho
		;;
	07)
		echo Julho
		;;
	08)
		echo Agosto
		;;
	09)
		echo Setembro
		;;
	10)
		echo Outubro
		;;
	11)
		echo Novembro
		;;
	12)
		echo Dezembro
		;;

	*)
		echo "Opção Inválida"
esac

}

# Mostra o texto de ajuda para o uso do script
help_text(){
	echo "Uso ./FuncoesDiversas.sh OPÇÃO DATA"
	echo
	echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
	echo
	echo "Opções:"
	echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido"
	echo "-i = Inverte formato BR para US e US para BR. Inclui as Barras"
	echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
	echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de"
	echo "Agosto de 1981 "
	echo
}

# -f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido
opcao_f(){

	if [ $CAMPO1 -gt 12 -a $CAMPO2 -gt 12 ]
	then
		echo 3
	elif [ $CAMPO1 -gt 31 -o $CAMPO2 -gt 31 ]
	then
		echo 3
	elif [ $CAMPO1 -gt 12 ]
	then
		echo 0
	elif [ $CAMPO2 -gt 12 ]
	then
		echo 1
	else
		echo 2
	fi
}

# -i = Inverte formato BR para US e US para BR. Inclui as Barras
opcao_i(){
	echo "$CAMPO2/$CAMPO1/$ANO"
}

# -b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981
opcao_b(){
	echo "$CAMPO1/$CAMPO2/$ANO"
}

# -e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de Agosto de 1981
opcao_e(){
	if [ $(opcao_f) -eq 0 ]
	then
		# Formato BR
		echo "$CAMPO1 de $(nome_do_mes $CAMPO2) de $ANO"
	else
		# Formato US
		echo "$CAMPO2 de $(nome_do_mes $CAMPO1) de $ANO"
	fi
}

# -------------------------------- MAIN ------------------------------

data_extrair_campos $2

case "$1" in 
	--help)
		help_text
		;;
	-f)
		opcao_f $2
		;;
	-i)
		opcao_i
		;;
	-b)
		opcao_b
		;;
	-e)
		opcao_e
		;;
	*)
		echo "Opção Inválida"
esac
