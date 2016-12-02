#!/bin/bash
# Objetivo: Executar um dump (full e estrutural) da base de dados da NVT
# Proprietario: Felipe Figueiredo <ffigueiredo@nvt.com.br>
# Historico:
# Criacao: 05/12
# Modificacao:
#	07/12 - Alteracao do script para rodar dump full ou apenas estrutural

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
DUMPFULL="--host"
MYSQLDUMP=$(which mysqldump)
DUMPDST="/home/suportenvt/smartura/banco/dump/$ANO/$MES/$DIA"
DUMPNAME="$DUMPDST/NVT-$ANO$MES$DIA.sql"
DUMPNAMEFULL="$DUMPDST/FULL_NVT-$ANO$MES$DIA.sql"

case $1 in

full)
	if [ !$DUMPDST ] ;
	then
		echo "Arquivo de destino nao encontrado. Criando $DUMPDST"
		mkdir -p $DUMPDST
	fi

	$MYSQLDUMP $DBUSER $DBPASSWORD $DUMPFULL $SLAVEHN $DBBASE > $DUMPNAMEFULL
	;;


*)

	if [ !$DUMPDST ] ;
	then
		echo "Arquivo de destino nao encontrado. Criando $DUMPDST"
		mkdir -p $DUMPDST
	fi

	$MYSQLDUMP $DBUSER $DBPASSWORD $DUMPOPTS $SLAVEHN $DBBASE > $DUMPNAME
	;;
esac
