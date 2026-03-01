#!/bin/bash
# Autor: Daniel Baco
# Version 0.1

# Variables
# ---------------------------------------
FECHA=$(date +%Y%m%d)
DIR=BACKUP_DIR
LOG=restauracion_FULL_${FECHA}.log

# Cargar entorno Oracle
# ---------------------------------------
export ORACLE_HOME=/opt/oracle/product/21c/dbhome_1
export ORACLE_SID=ORCLCDB
export PATH=$ORACLE_HOME/bin:$PATH

# Ejecutar restauracion
# ---------------------------------------
impdp system/root FULL=Y \
DIRECTORY=$DIR \
DUMPFILE=backup_full_20260227_01.dmp \
LOGFILE=$LOG \
ENCRYPTION_PASSWORD=0r@cl3_d@n1
