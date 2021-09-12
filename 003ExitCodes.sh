#!/bin/bash

#########################################################
#
# 003ExitCodes.sh - Script de Exemplo de Exit Codes
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: Exit codes são valores de saída que variam de 0 - 255.
#            Eles indicam o resultado da execução de um comando.
#            0 -> sucesso
# Exemplo de uso: ./003ExitCodes.sh
#
# Alterações:
#
#########################################################

# $? retorna o resultado da execução do comando anterior

cd /home/igor/Documentos/cursos_udemy/linux_shell_script/arquivos/003
touch teste
echo $?  # 0 (sucesso)

touch -xxx teste
echo $?  # 1 (erro)

# O man de cada comando pode apresentar o significado dos códigos de retorno

# Ao encontrar o exit, o script retorna imediatamente e preserva o código de retorno
# do comando anterior (echo $?) ou seja, 0 (pois o echo será executado com sucesso)
# exit 

# se quisermos escolher o código de retorno, podemos fazer, por exemplo:
exit 10

