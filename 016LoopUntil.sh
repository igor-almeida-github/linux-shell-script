#!/bin/bash

############################################################################################
#
# 016LoopUntil.sh - O loop until
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Teoria sobre o uso do comando until
#
# Exemplo de uso: ./016LoopUntil.sh
#
# Alterações:
#
############################################################################################

# Estrutura básica do until
# until <comando-condição>
# do 
# 	comando1
# 	comando2
# 	...
# done

# until faz o contrário do while, ou seja, executa algo até que uma expressão se torne verdadeira
# assim que a condição se tornar verdadeira, o until para de ser executado

# Até que você inicie o firefox, o scripe pede que você o inicie
# Quando o firefox for iniciado, mostra o PID do processo
# until ps axu | grep firefox | grep -v grep > /dev/null
# do 
# 	echo Inicie o Firefox...
# 	sleep 3
# done

# echo Firefox Iniciado.
# echo PID: $(pgrep firefox)
