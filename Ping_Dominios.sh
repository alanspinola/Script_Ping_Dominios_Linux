#!/bin/bash
#!/bin/bash -x

# Alan Spinola - suporte@alanspinola.store
# Data: 26/07/2018
# Script para Automação de teste IP via ICMP, com coleta de Log local.
# Versão: 1.0.1a - Em desenvolvimento

daystamp=`date +%d%m%y`
timestamp=`date +%H%M%S`
pid=$$
sessionId="${daystamp}${timestamp}-${pid}"
OS=`uname`

#Script para Teste das Hospedagens
admin="Alan Spinola"
email="suporte@alanspinola.store"
site="www.alanspinola.store"
save="Arquivo Salvo com Sucesso."
echo *------------------------------------*
echo "Bem Vindo --WebMaster: $admin"
echo 		"$site"
echo *------------------------------------*
data=$(date +"%c")
echo "Data do Teste Realizado: $data"
#Liste de Host que será realizado teste e coleta de informações.
for i in $( cat $HOME/public_html/iplist.txt )
do
#Diretorio que será salvo arquivos de log.
ping -c2 $i >> $HOME/public_html/log/log$daystamp.txt
if [ $? -eq 0 ]
	then
echo ""
echo "---- Site está ONLINE ----" $i
else
echo ""
echo "---- Site está OFFLINE ----" $i
fi
sleep 10
clear
done

#Organização dos Arquivos - FOR0001
# Criado: 24/07/2018
# FOR0001 - Organização e Backup
# STATUS:  Em Desenvolvimento
# TESTE: PARROT_OS 
# DEPLOY: NO

#Organização dos Arquivos - FOR0001
#Verificando se pasta já existe
if [ -d $daystamp] 
then
echo "Diretório já existe"
mv *.txt log/$daystamp
echo "Arquivos movido com sucesso"
else
#Criando diretório
mkdir $HOME/public_html/log/$daystamp
mv *.txt $HOME/public_html/log/$daystamp
echo "Pasta criada para armazenamento dos LOG"
echo "Arquivos Organizado com Sucesso"
fi
sleep 10
clear
done
#sessionID 
ls log/ >> $HOME/public_html/log/log$daystamp.txt
$sessionId >> $HOME/public_html/log/log$daystamp.txt
#FIM - FOR0001

#Backup - FOR0001
#Realizar a compactação

echo ""
echo $save -- $email
echo $site