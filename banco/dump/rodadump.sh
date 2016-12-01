#!/bin/bash
# Objetivo: Executar um dump (full e estrutural) da base de dados da NVT
# Proprietario: Felipe Figueiredo <ffigueiredo@nvt.com.br>
# Historico:
# Criacao: 05/12

# VARIAVEIS
SLAVEHN=nvtdbslave
DBUSER="-usuportenvt"
DBPASSWORD="-psuportenvt"
DBBASE=nvt
ANO=$(date +%Y)
MES=$(date +%m)
DIA=$(date +%d)
DATA=$(date +%D)
DUMPOPTS="--no-data --host"
MYSQLDUMP=$(which mysqldump)
DUMPDST="/home/suportenvt/smartura/banco/dump/$ANO/$MES/$DIA"
DUMPNAME="$DUMPDST/NVT-$ANO$MES$DIA.sql"

if [ !$DUMPDST ] ;
then
	echo "Arquivo de destino nao encontrado. Criando $DUMPDST"
	mkdir -p $DUMPDST
fi

$MYSQLDUMP $DBUSER $DBPASSWORD $DUMPOPTS $SLAVEHN $DBBASE > $DUMPNAME
