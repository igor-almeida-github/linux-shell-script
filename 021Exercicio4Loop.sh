#!/bin/bash

############################################################################################
#
# 021Exercicio4Loop.sh - Exercício 4 de Loop
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Fazer um script que crie um arquivo e o preencha com um conjunto de
# caracteres até que um determinado tamanho em bytes seja atingido.
# O usuário deverá fornecer o nome do arquivo, o conjunto de caracteres que
# será utilizado para preenchimento do arquivo, e o tamanho final do arquivo em
# bytes.
# Crie também uma lógica que mostre o andamento da criação desse arquivo, de
# 10 em 10%, e o tamanho atual do arquivo.
# Se o arquivo já existir, toda a informação anterior será apagada.
# Dicas:
# • Para saber o tamanho atual do arquivo, use o comando:
# ◦ stat --printf=%s arquivo
# • Use a opção % do expr, que retorna o resto de uma divisão, para saber
# quando exibir a mensagem de porcentagem (10, 20, 30, etc)
#
# Exemplo de uso: ./021Exercicio4Loop.sh
#
# Alterações:
#
############################################################################################

read -p "Entre o nome do arquivo: " NOME
read -p "Entre o conjunto de caracteres para preenchimento: " CHR
read -p "Entre o tamanho final desejado (em bytes): " TAMANHO

# Cria o arquivo caso ele não exista
touch $NOME

# Deleta todo o conteúdo do arqui (caso ele já exista e esteja cheio de conteúdo)
> $NOME

# Enquanto o arquivo tiver um tamanho menor que o informado...
TAMANHO_ATUAL=0
ULTIMO_PERCENTUAL=0
while [ $TAMANHO_ATUAL -lt $TAMANHO ]
do
	echo $CHR >> $NOME
	TAMANHO_ATUAL=$(stat --printf=%s $NOME)
	PERCENTUAL_CONCLUIDO=$(expr $TAMANHO_ATUAL \* 100 / $TAMANHO)
	if [ $(expr $PERCENTUAL_CONCLUIDO % 10) -eq 0 -a  $PERCENTUAL_CONCLUIDO != $ULTIMO_PERCENTUAL ]
	then
		echo Concluído: $PERCENTUAL_CONCLUIDO% - Tamanho do Arquivo: $TAMANHO_ATUAL
		ULTIMO_PERCENTUAL=$PERCENTUAL_CONCLUIDO
	fi
done


