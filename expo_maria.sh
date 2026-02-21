#!/bin/bash
#Autor: Daniel Baco
#Version: 0.3
#--------------------------------------------------
# Ejecución en 2 minutos
sleep 120

# Variables
#--------------------------------------------------
DB="prueba"
DUMP_FILE="/home/dani/maria/expo_maria1.sql"
LOG_FILE="/home/dani/maria/log_maria1.log"
MYSQL_USER="root"
MYSQL_PASS="root"

# Obtener todas las tablas excepto BONUS
TABLES=$(mysql -u $MYSQL_USER -p$MYSQL_PASS -N -e "
SELECT table_name
FROM information_schema.tables
WHERE table_schema='$DB'
  AND table_name != 'BONUS';
")

#Exportación
#--------------------------------------------------
mysqldump -u $MYSQL_USER -p$MYSQL_PASS $DB $TABLES > "$DUMP_FILE" 2> "$LOG_FILE"

echo "Exportación completada."
echo "Archivo SQL: $DUMP_FILE"
echo "Log de exportación: $LOG_FILE"
