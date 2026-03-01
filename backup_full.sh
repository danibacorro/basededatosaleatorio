#!/bin/bash
# Autor: Daniel Baco
# Version 0.1

# Variables
# ---------------------------------------
FECHA=$(date +%Y%m%d)
DIR=BACKUP_DIR
LOG=backup_FULL_${FECHA}.log

# Cargar entorno Oracle
# ---------------------------------------
export ORACLE_HOME=/opt/oracle/product/21c/dbhome_1
export ORACLE_SID=ORCLCDB
export PATH=$ORACLE_HOME/bin:$PATH

# Ejecutar copia de seguridad
# ---------------------------------------
expdp system/root FULL=Y \
DIRECTORY=$DIR \
DUMPFILE=backup_full_${FECHA}_%U.dmp \
LOGFILE=$LOG \
FILESIZE=80M \
COMPRESSION=ALL \
ENCRYPTION=ALL \
ENCRYPTION_PASSWORD=0r@cl3_d@n1
