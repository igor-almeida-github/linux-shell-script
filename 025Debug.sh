#!/bin/bash

############################################################################################
#
# 025Debug.sh - Depuração do shell script
#
# Autor: Igor Goulart de Almeida
# Data: 09/07/2021
#
# Descrição:
#
# Exemplo de uso: ./025Debug.sh
#
# Alterações:
#
############################################################################################

# Identificar um erro de sintaxe 
# Podemos testar um script sem executar para que nenhuma alteração seja provocada pelo script
# bash -n script.sh argumentos-do-script

# Coloca sinal de + toda vez que executar um comando e mostra na tela
# bash -x script.sh argumentos-do-script

# Mostra só o comando que vai ser executado e o resultado. 
# Faz isso para cada comando ou bloco de código
# bash -v script.sh argumentos-do-script

# Podemos unir os dois
# bash -xv script.sh argumentos-do-script

# Podemos especificar onde o debug deve começar e acabar. 
# set -x
# codigo-para-debugar
# set +x

# Após isso. Executamos normalmente
# ./script.sh


# Podemos executar passo a passo
# trap read DEBUG
# A partir desse ponto, queremos fazer execução passo a passo
# trap "" DEBUG
# Finalizada a execução passo a passo
