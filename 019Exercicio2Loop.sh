#!/bin/bash

############################################################################################
#
# 019Exercicio2Loop.sh - Exercício 2 de Loop
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Crie um script que receba um nome de processo como argumento e que
# constantemente irá verificar se o processo está em execução.
# Caso não esteja, deve ser exibida uma mensagem na sessão do usuário a cada
# x segundos.
# O processo deve rodar como Daemon, ou seja, deve estar sempre em
# execução, verificando o processo em questão a cada x segundos.
#
# Exemplo de uso: ./019Exercicio2Loop.sh
#
# Alterações:
#
############################################################################################



until ps axu | grep $1 | grep -v -e "grep" -e "019Exercicio2Loop.sh"  > /dev/null
do 
	echo "ATENÇÃO!!!!!!! O processo $1 NÃO está em execução!"
	sleep 1
done

echo "Processo $1 Iniciado."




