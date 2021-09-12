#!/bin/bash

############################################################################################
#
# 012Exercicio2InstrucoesCondicionais.sh - Exercício 2 de instruções condicionais
#
# Autor: Igor Goulart de Almeida
# Data: 27/06/2021
#
# Descrição: Crie um script que gere um arquivo compactado de backup de todo o diretório
# home do usuário atual (/home/<usuario>).
# Considere que:
# • O arquivo de backup será criado no diretório /home/<usuario>/Backup
# • O nome do arquivo de backup deve seguir o padrão
# backup_home_AAAAMMDDHHMM.tgz, exemplo
# backup_home_201708241533.tgz
# • Caso o diretório /home/<usuario>/Backup não exista, o script deve criá-lo
# • Antes de criar o backup, o script deve consultar se existe algum arquivo
# de backup criado na última semana. Se exisitir, o usuário deve ser
# consultado se deseja continuar. Se o usuário optar por não continuar, o
# script deve abortar com código de saída 1.
# • Após gerar o backup, o script deve informar o nome do arquivo gerado.
# OBS: Vou fazer o backup somente da pasta imagens
#
# Exemplo de uso: ./012Exercicio2InstrucoesCondicionais.sh
#
# Alterações:
#
############################################################################################

# Cria o diretório de backup caso ele não exista
mkdir -p /home/igor/Backup

DATAHORA=$(date +'%Y%m%d%H%M')
NOMEDOARQ="backup_imagens_$DATAHORA.tgz"


# Checando se já foi criado um arquivo de backup essa semana
DATAHORADOULTIMO=$(ls -l "/home/igor/Backup" | tail -n1 | rev | \
					cut -d' ' -f1 | rev | cut -d'_' -f3 | cut -d'.' -f1)
DATAHORAUMASEMANAATRAS=$(date -d 'now - 1 weeks' +'%Y%m%d%H%M')

if [ $DATAHORADOULTIMO -gt $DATAHORAUMASEMANAATRAS ]
then
	#Um arquivo de backup já foi criado essa semana
    echo "Já foi gerado um backup do diretório /home/igor/Imagens nos últimos 7 dias."
    read -p "Deseja continuar? (N/s): " DESEJO
    if [ $DESEJO == "s" ]
    then
    	echo "Será criado mais um backup para a mesma semana"
    	echo
	else
		exit 1
	fi
fi


# Compacta a pasta imagens e salva em Backup
echo "Criando Backup..."
echo
tar -zcf "/home/igor/Backup/$NOMEDOARQ" -C /home/igor Imagens			

# Mensagem de sucesso
echo "O backup de nome \"$NOMEDOARQ\" foi criado em"
echo "/home/igor/Backup"
echo
echo "Backup Concluído!"
