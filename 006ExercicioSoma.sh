#!/bin/bash

############################################################################################
#
# 006ExercicioSoma.sh - Exercício de soma de parâmetros recebidos
#
# Autor: Igor Goulart de Almeida
# Data: 21/06/2021
# Descrição: . Crie um Script que após executado solicite dois valores como entrada. Esses
# valores devem ser somados e o resultado exibido para o usuário.
# Exemplo de uso: ./006ExercicioSoma.sh
#
# Alterações:
#
############################################################################################

# Minha solução
read -p "Por favor, informe as os valores a serem somados: " VALOR1 VALOR2
echo "O resultado da soma é: $(expr $VALOR1 + $VALOR2)"
