#!/bin/bash
#!/bin/bash -x

# Alan Spinola - suporte@alanspinola.store
# Data: 23/07/2018
# Script para Automação de teste IP via ICMP, com coleta de Log local.
# Versão: 1.0.1 - Produção

daystamp=`date +%d%m%y`
timestamp=`date +%H%M%S`
pid=$$
sessionId="${daystamp}${timestamp}-${pid}"
OS=`uname`

#Script para Teste das Hospedagens
#Banner_Aviso_de_Segurança
echo                                )!(
echo                               (o o)
echo +-------------------------ooO--(_)--Ooo------------------------+
echo |                                                              |
echo |                   * * * "A T E N C A O" * * *                |
echo |           "ACESSO RESTRITO A PESSOAS AUTORIZADAS"            |
echo |    "TODOS OS ACESSOS ESTAO SENDO MONITORADOS E REGISTRADOS"  |
echo |                                                              |
echo |                   === "A T T E N T I O N" ===                |
echo |             "THIS IS A RESTRICTED ACCESS EQUIPMENT"          |
echo |            "ANY CONNECTIONS ARE MONITORED AND LOGGED"        |
echo |                                                              |
echo +--------------------------------------------------------------+
admin="Alan Spinola"
email="suporte@alanspinola.store"
save="Arquivo Salvo com Sucesso."
echo *------------------------------------*
echo "Bem Vindo --WebMaster: $admin"
echo *------------------------------------*
data=$(date +"%c")
echo "Data do Teste Realizado: $data"
#Liste de Host que será realizado teste e coleta de informações.
for i in $( cat $HOME/public_html/iplist.txt )
do
#Diretorio que será salvo arquivos de log.
ping -c2 $i >> $HOME/public_html/log/log$daystamp.html
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