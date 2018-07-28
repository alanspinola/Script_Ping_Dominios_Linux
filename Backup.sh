#!/bin/bash
#!/bin/bash -x

# Alan Spinola - suporte@alanspinola.store
# Data: 27/07/2018
# Script para realização de backups.
# Versão: 1.0.2a - Em Desenvolvimento

daystamp=`date +%d%m%y`
anostamp= `date +%m%y`
timestamp=`date +%H%M%S`
pid=$$
sessionId="${daystamp}${timestamp}-${pid}"
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
dirsalve = 2018/$anostamp

#Backup -FOR0001
#Em Implementação
if [ -d 2018/$anostamp]
then
echo " Backups REF:$anostamp"
mv *.txt $dirsalve
cd 2018/
tar -czvf $anostamp
ls >> log_backup$anostamp.txt
$sessionID >> log_backup$anostamp.txt
else
mkdir 2018/$anostamp
echo "Pasta criada REF:$anostamp"
mv *.txt $dirsalve
cd 2018/
tar -czvf $anostamp
ls >> log_backup$anostamp.txt
$sessionID >> log_backup$anostamp.txt
fi
echo ""
echo *------------------------------------*
echo  Arquivos Compactados com Sucesso
echo *------------------------------------*
echo $save -- $email
