#!/bin/bash

# Objetivo: Script para sicnronizar as alterações realizadas e homologadas no produto
# Proprietario: Felipe Figueiredo <ffigueiredo@nvt.com.br>
# Historico: 
# Criacao: 21/09
# Alteração: 05/12 - Adição do segundo servidor pabx para sincronização


for DSTSERVER in nvtpabx nvtpabx nvtpabx2 ; 

do

echo $DSTSERVER

sshpass -p 'suportenvt' rsync -avzh /home/suportenvt/produtos/smartura/asterisk/etc/asterisk/ -e 'ssh -p 22' suportenvt@$DSTSERVER:/home/suportenvt/asterisk

done
