#!/bin/bash

# Alan Spinola - suporte@alanspinola.store
# Data: 28/07/2018
# Script para Automação de teste IP via ICMP, com coleta de Log local.
# Versão: 1.0.4a - Em Desenvolvimento

daystamp=`date +%d-%m-%y`
timestamp=`date +%H:%M`
sessionId="${daystamp} -- ${timestamp}"
OS=`uname`

#Script para Teste das Hospedagens
admin="Alan Spinola"
email="suporte@alanspinola.store"
save="Arquivo Salvo com Sucesso."
echo *------------------------------------*
echo "Bem Vindo --WebMaster: $admin"
echo *------------------------------------*
data=$(date +"%c")
echo "Data do Teste Realizado: $data"
#Liste de Host que será realizado teste e coleta de informações.
# Diretorio Padrão $HOME/public_html/iplist.txt
# Diretorio para Ambiente de Testes == site/iplist.txt
for i in $( cat site/iplist.txt )
do
#Diretorio que será salvo arquivos de log.
ping -c5 $i >> 2018/log$daystamp.txt
echo $sessionId >> 2018/log$daystamp.txt
if [ $? -eq 0 ]
	then
echo ""
echo "---- Site está ONLINE ----" $i
		else
echo ""
echo "---- Site está OFFLINE ----" $i
fi
done
echo ""
echo $save -- $email
