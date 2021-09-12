#!/bin/bash

############################################################################################
#
# 020Exercicio3Loop.sh - Exercício 3 de Loop
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Fazer um script que inspecione os diretórios /home/ de todos os usuários em
# busca de arquivos com as extensões .mp3, .mp4 e .jpg.
# O script deve gerar como saída final um relatório com a quantidade de cada
# tipo de arquivo para cada usuário.
# Dicas:
# • Você pode utilizar a seguinte sintaxe para o comando find: find
# /home/usuario -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3'
#
# Exemplo de uso: ./020Exercicio3Loop.sh
#
# Alterações:
#
############################################################################################

USUARIOS=$(ls /home)

# Save IFS
OLDIFS=$IFS

# Make separator to be tab and new line for the iteration
IFS=$'\t\n'

for USUARIO in $USUARIOS
do
	NUMERO_JPG=$(find /home/$USUARIO -name '*.jpg' | wc -l)
	NUMERO_MP3=$(find /home/$USUARIO -name '*.mp3' | wc -l)
	NUMERO_MP4=$(find /home/$USUARIO -name '*.mp4' | wc -l)
	echo Usuario: $USUARIO
	echo Arquivos JPG: $NUMERO_JPG
	echo Arquivos MP3: $NUMERO_MP3
	echo Arquivos MP4: $NUMERO_MP4
	echo
done

# restore IFS
IFS=$OLDIFS




