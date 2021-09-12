#!/bin/bash

############################################################################################
#
# 024CriandoLogs.sh - Criando Logs
#
# Autor: Igor Goulart de Almeida
# Data: 08/07/2021
#
# Descrição: 
#
# Exemplo de uso: ./024CriandoLogs.sh
#
# Alterações:
#
############################################################################################

# ************************ MODO 1 - Redirecionamento ******************************

# Jogar a saída padrão e a saída de erro em um arquivo de log
# script.sh >> log.out 2>&1

# Jogar a saída padrão e a saída de erro em respectivos arquivos
# script.sh >> log.out 2>> log_erro.out

# Jogar na tela e ao mesmo tempo no log (-a para fazer append)
# script.sh | tee -a log.out


# ************************ MODO 2 - Exec ******************************************

# Podemos fazer com que tudo seja jogado para o arquivos de log usando exec
# O exec é como se estivessemos aplicando o comando direto na execução do script
# LOG="$HOME/Downloads/log.out"
# exec 1>> $LOG  # Saída padrão
# exec 2>&1      # Saída de erro

# Usando tee para redirecinar para arquivo e para a tela ao mesmo tempo
# LOG="$HOME/Downloads/log.out"
# exec 1>> >(tee -a "$LOG") # Saída padrão
# exec 2>&1      # Saída de erro


# ************************ MODO 3 - Logger e rsyslog ******************************

# É possível gerar logs para serem administrados pelo gerenciador de logs do linux rsyslog
# Para configurar o rsyslog devemos entrar como root
# cd /etc/rsyslog.d/
# 50-default.conf são as configurações dos arquivos de log
# Reiniciar o system log
#systemctl restart rsyslog

# logger vai obter alguns parâmetros e vai jogar os logs para o syslog tratar
# logger -p local0.err "Teste de mensagem de erro"
# Podemos colocar tags no registro
# logger -p local0.err -t [tag] "Teste de mensagem de erro"


