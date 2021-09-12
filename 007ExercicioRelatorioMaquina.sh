#!/bin/bash

############################################################################################
#
# 007ExercicioRelatorioMaquina.sh - Exercício relatório da máquina em uso
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: .  Crie um script que gere um relatório de algumas informações da máquina
# atual:
# • Nome da Máquina
# • Data e Hora Atual
# • Desde quando a máquina está ativa
# • Versão do Kernel
# • Quantidade de CPUs/Cores
# • Modelo da CPU
# • Total de Memória RAM Disponível
# • Partições 
#
# Exemplo de uso: ./007ExercicioRelatorioMaquina.sh
#
# Alterações:
#
############################################################################################

# Variáveis
KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo |grep "model name"|wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024)  # EM MB
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

# Exibir na tela
echo "==============================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "==============================================="
echo
echo "Máquina Ativa desde: $UPTIME"
echo
echo "Versão do Kernel: $KERNEL"
echo
echo "CPUs:"
echo
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições:"
echo "$FILESYS"
