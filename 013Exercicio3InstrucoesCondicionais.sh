#!/bin/bash

############################################################################################
#
# 013Exercicio3InstrucoesCondicionais.sh - Exercício 3 de instruções condicionais
#
# Autor: Igor Goulart de Almeida
# Data: 27/06/2021
# Descrição: Crie um script que receba do usuário 2 valores e em seguida exiba um menu
# para ele escolha uma das 4 principais operações aritmétricas (soma,
# subtração, multiplicação e divisão). Após isso a operação e o resultado são
# exibidos ao usuário.
# Considere que:
# • O script deve validar e abortar a execução caso algum dos valores não
# seja informado
# • No caso de multiplicação, o script deve exibir uma mensagem de erro
# caso um dos valores seja 0, e então abortar
# • No caso de divisão, o script deve exibir uma mensagem de erro caso um
# dos valores seja 0, e então abortar
# • Também no caso de divisão, o script deve exibir se é uma divisão exata
# ou com resto.
#
# Exemplo de uso: ./013Exercicio3InstrucoesCondicionais.sh
#
# Alterações:
#
############################################################################################


read -p "Informe o Valor 1: " VALOR1
if [ -z "$VALOR1" ] 
then
	echo
	echo "Valor não informado"
	echo "Abortando..."
	exit 1
fi

read -p "Informe o Valor 2: " VALOR2
if [ -z "$VALOR2" ] 
then
	echo
	echo "Valor não informado"
	echo "Abortando..."
	exit 1
fi

echo 
echo "Escolha uma Operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"
echo
read -p "Opção: " OPCAO
echo

case "$OPCAO" in 
	'1')
		echo "$VALOR1 + $VALOR2 = $(expr $VALOR1 + $VALOR2)"
		;;
	'2')
		echo "$VALOR1 - $VALOR2 = $(expr $VALOR1 - $VALOR2)"
		;;
	'3')
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo
			echo "Erro, um dos valores informados é nulo"
			echo "Abortando..."
			exit 1
		fi
		echo "$VALOR1 * $VALOR2 = $(expr $VALOR1 \* $VALOR2)"
		;;
	'4')
		if [ $(expr $VALOR1 % $VALOR2) -gt 0 ] 
		then
			echo "Divisão com Resto = $(expr $VALOR1 % $VALOR2)"
			echo
		fi
		echo "$VALOR1 / $VALOR2 = $(expr $VALOR1 / $VALOR2)"
		;;
	'Q') 
		echo "Saindo..."
		exit 0
		;;
	*)
		echo "Opção inválida"
		echo "Saindo..."
		exit 1
		;;
esac