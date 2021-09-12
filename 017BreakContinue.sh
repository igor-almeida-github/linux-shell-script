#!/bin/bash

############################################################################################
#
# 017BreakContinue.sh - break e continue 
#
# Autor: Igor Goulart de Almeida
# Data: 02/07/2021
#
# Descrição: Teoria sobre o uso dos comandos break e continue
#
# Exemplo de uso: ./017BreakContinue.sh
#
# Alterações:
#
############################################################################################

# uso do break
# while ls /var/lock/processo.lock > /dev/null
# do
# 	if [ $(date +%H) -gt 18 ]
# 	then
# 		break
# 	fi
# 	echo "Processo em Execução"
# 	sleep 30
# done

# Uso do continue - O continue faz o loop voltar no inicio (impede a execução do que está abaixo). 
# O continue não faz a iteração propriamente dita voltar no início, somente a continua no próximo item.
# while ls /var/lock/processo.lock > /dev/null
# do
# 	if [ $(date +%H) -eq 18 ]
# 	then
#		sleep 3600
# 		continue
# 	fi
# 	echo "Processo em Execução"
# 	sleep 30
# done
