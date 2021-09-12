#!/bin/bash

############################################################################################
#
# 011Exercicio1InstrucoesCondicionais.sh - Exercício 1 de instruções condicionais
#
# Autor: Igor Goulart de Almeida
# Data: 27/06/2021
#
# Descrição: Crie um script que baseado no horário atual escreva “Bom Dia”, “Boa Tarde” ou
# “Boa Noite”. Considere que o começo do dia às 06:00.
# O mesmo script deve mostrar também a hora atual no formato de 0 a 12,
# indicando AM ou PM.
#
# Exemplo de uso: ./011Exercicio1InstrucoesCondicionais.sh
#
# Alterações:
#
############################################################################################


HORAATUAL24F=$(date +'%H')
HORAATUAL12F=$(date +'%I')
MINUTOATUAL=$(date +'%M')

# Determina entre dia, tarde e noite
if [ $HORAATUAL24F -ge 6 -a $HORAATUAL24F -le 11 ]
then
    echo "Bom Dia!"
elif [ $HORAATUAL24F -ge 12 -a $HORAATUAL24F -le 17 ]
then
	echo "Boa Tarde!"
else
	echo "Boa Noite!"
fi

# Determina o formato AM ou PM para a hora
if [ $HORAATUAL24F -le 11 ]
then
	AMOUPM=AM
else
	AMOUPM=PM
fi

echo "A hora atual é: $HORAATUAL12F:$MINUTOATUAL $AMOUPM"
