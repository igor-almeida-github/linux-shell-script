#!/bin/bash

############################################################################################
#
# 007ExercicioRelatorioMaquina.sh - Exercício Informações do Usuário
#
# Autor: Igor Goulart de Almeida
# Data: 26/06/2021
# Descrição: .  Crie um script que receba um nome de usuário como parâmetro e exiba as
# seguintes informações:
# • UID do usuário
# • Nome Completo / Descrição do Usuário
# • Total em Uso no /home do usuário
# • Informações do último login do usuário
# • [Opcional] Validar se o usuário existe ou não sem o uso do if, que ainda
#   não foi estudado. Se não existir retorne o exit code 1, se existir retorne
#   exit 0 
#
# Exemplo de uso: ./008ExerciciosInfoUser.sh
#
# Alterações:
#
############################################################################################

# Pede para informar o nome do usuário
read -p "Por favor, informe o nome do usuário: " NOMEINFORMADO

# Procura pelo usuário (não é case sensitive)
NOMEUSUARIO=$(cat /etc/passwd | cut -d: -f1 | grep -i "$NOMEINFORMADO")

# Conta quantos usuários existem com o nome informado
NUMERODEUSUARIOS=$(echo "$NOMEUSUARIO" | sed -r '/^\s*$/d' | wc -l)

# Checa se existe pelo menos um usuário com o nome informado, se não, sai com exit code 1.
expr 1 / $NUMERODEUSUARIOS &> /dev/null || exit 1

# Se existir pelo menos um usuário com o nome informado, pegamos o primeiro
NOMEUSUARIO=$(echo "$NOMEUSUARIO" | head -n1)

# Procura o id do usuário
USERID=$(cat /etc/passwd | grep "^$NOMEUSUARIO:" | cut -d: -f3)

# Total em Uso no /home do usuário
TOTALUSO=$(du -hs "/home/$NOMEUSUARIO" | cut -d$'\t' -f1)


# Mostrar informações do usuário
echo "==============================================="
echo "Relatório do Usuário: $NOMEINFORMADO"
echo
echo "UID: $USERID"
echo "Nome ou Descrição: $NOMEUSUARIO"
echo
echo "Total Usado no /home/$NOMEUSUARIO: $TOTALUSO"
echo
echo "Ultimo Login:"
lastlog -u $NOMEUSUARIO
echo "==============================================="