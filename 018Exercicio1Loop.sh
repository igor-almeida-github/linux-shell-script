#!/bin/bash

############################################################################################
#
# 018Exercicio1Loop.sh - Exercício 1 de Loop
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Crie um script que mostre todos os usuários “humanos” da máquina seguidos
# de seu UID, Diretório Home e Nome/Descrição.
# Dicas:
# • Baseie-se pelas informações do arquivo /etc/passwd
# • O arquivo /etc/login.defs mostra através dos parâmetros UID_MIN e
# UID_MAX os UID atribuídos aos usuários “normais” do sistema
# • Para definir apenas a quebra de linha como separador no IFS use:
# IFS=$'\n'
# • Use o a opção -e do echo para controlar o espaçamento da saída com
# tabs (\t)
#
# Exemplo de uso: ./018Exercicio1Loop.sh
#
# Alterações:
#
############################################################################################

# Pega o UID max e mínimo de usuários humanos
UID_MIN=$(cat /etc/login.defs | grep "^UID_MIN"| tr -d '[:blank:][UID_MIN]')
UID_MAX=$(cat /etc/login.defs | grep "^UID_MAX"| tr -d '[:blank:][UID_MAX]')

# Imprime o cabeçalho
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

# Salva o IFS
OLDIFS=$IFS

# Altera o IFS para iterar sobre as linhas
IFS=$'\n'

# Itera sobre as linhas do passwd e mostra as informações do usuário se ele for humano
for LINHA in $(cat /etc/passwd)
do
	UID_USUARIO=$(echo $LINHA | cut -d':' -f3)
	if [ $UID_USUARIO -ge $UID_MIN -a $UID_USUARIO -le $UID_MAX ]
	then
		USUARIO=$(echo $LINHA | cut -d':' -f1)
		DIRHOME=$(echo $LINHA | cut -d':' -f6)
		NOMEOUDESCRICAO=$(echo $LINHA | cut -d':' -f5)
		echo -e "$USUARIO\t\t$UID_USUARIO\t\t$DIRHOME\t\t$NOMEOUDESCRICAO"
	fi
done
IFS=$OLDIFS
