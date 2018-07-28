#!/bin/bash
#!/bin/bash -x

# Alan Spinola - suporte@alanspinola.store
# Data: 28/07/2018
# Script para realização de backups.
# Versão: 1.0.3a - Em Desenvolvimento

daystamp=`date +%d%m%y`
timestamp=`date +%H%M%S`
sessionId="${daystamp} -- ${timestamp}"
OS=`uname`

#Script para realizar Backup
admin="Alan Spinola"
email="suporte@alanspinola.store"
save="Arquivo Salvo com Sucesso."
echo *------------------------------------*
echo "Bem Vindo --WebMaster: $admin"
echo *------------------------------------*
data=$(date +"%c")
echo "Data do backup: $data"
#Diretorio Padrões

#Backup -FOR0001
#Em Implementação
if [ -d "$daystamp"]
then
echo " Backups REF:2018/"
mv *.* "$daystamp.txt"
tar -czvf "$daystamp"
ls >> log_backup$daystamp.txt
else
mkdir "$daystamp"
echo "Pasta criada REF:$daystamp"
mv  *.txt "$daystamp"
tar -czvf "$daystamp"
ls >> log_backup$daystamp.txt
fi
echo *------------------------------------*
echo  Arquivos Compactados com Sucesso
echo *------------------------------------*
echo $save -- $email
