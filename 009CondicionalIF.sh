#!/bin/bash

############################################################################################
#
# 009CondicionalIF.sh - Exemplo de condicionais if
#
# Autor: Igor Goulart de Almeida
# Data: 26/06/2021
# Descrição: Uso do if e expressões de test
# Exemplo de uso: ./009CondicionalIF.sh
#
# Alterações:
#
############################################################################################

# test <expressão> ou [ expressão ] fazem  a mesma coisa (note os espaços)


# Exemplo do uso do if
#----------------------------start-code-------------
# if grep "$1" /etc/passwd
# then
#     echo "O usuário existe"
# else
# 	echo "O usuário não existe"
# fi
#----------------------------end-code---------------


# Da forma acima, ao encontrar o usuário, a linha é exibida
# igor@igor-PC:~$ 009CondicionalIF.sh igor
# igor:x:1000:1000:igor,,,:/home/igor:/bin/bash
# O usuário existe

# para suprimir a exibição da linha, podemos usar:
#----------------------------start-code-------------
# if grep "$1" /etc/passwd > /dev/null
# then
#     echo "O usuário existe"
# else
# 	echo "O usuário não existe"
# fi
#----------------------------end-code---------------


# Usando o test
#----------------------------start-code-------------
# USUARIO=$(grep "$1" /etc/passwd)
# # Checa se a variável não é nula
# if test -n "$USUARIO"
# then
#     echo "O usuário existe"
# else
# 	echo "O usuário não existe"
# fi
#----------------------------end-code---------------


# Usando o test escrito de forma alternativa
#----------------------------start-code-------------
# USUARIO=$(grep "$1" /etc/passwd)
# # Checa se a variável não é nula
# if [ -n "$USUARIO" ]
# then
#     echo "O usuário existe"
# else
# 	echo "O usuário não existe"
# fi
#----------------------------end-code---------------


# Podemos usar nested ifs
#----------------------------start-code-------------
USUARIO=$(grep "$1" /etc/passwd)
VAR1=igor
# Checa se a variável não é nula
if [ -n "$USUARIO" ]
then
    echo "O usuário existe"
    if [ "$VAR1" = igor ]
    then
    	echo ok
	fi
else
	echo "O usuário não existe"
fi
#----------------------------end-code---------------

# -gt ---> greater than ex: if [ 10 -gt 20 ]
