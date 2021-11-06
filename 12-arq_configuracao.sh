#!/usr/bin/env bash
# 12-uarq_configuracao.sh
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
# --------------------------------------------------------------------- #
# Descrição:
# Exemplo de utilização de arquivo de configuração
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 06/11/2021 - Éder
#       -Inicio do programa
#       -Alteração:
# --------------------------------------------------------------------- #
#   Testado em:
#   bash 5.0.17(1)
# -------------------------- Variáveis -------------------------------- #
ARQ_CONFIG="12-conf.cf"
MAIUSCULO=
COR=
MSG="Mensagem de teste"

VERMELHO="\033[31;1;5m"
AZUL="\033[34;1;5m"
# ---------------------------- Testes --------------------------------- #
[ ! -r "$ARQ_CONFIG" ] && echo "sem acesso a leitura" && exit 1

# --------------------------- Funções --------------------------------- #
#
#
# -------------------------- Execução --------------------------------- #
while read -r linha
do
  [ "$(echo $linha | cut -c1)" = "#" ] && continue
  [ ! "$linha" ] && continue
  echo "$linha"
done < "$ARQ_CONFIG"
#
#
