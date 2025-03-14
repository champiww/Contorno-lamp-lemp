#!/bin/bash
#Script para facer backup da BD
. ./.env.dev # .env.dev en desenvolvemento, .env.prod en produccion

docker compose -f compose-lemp.dev.yml exec basededatos bash -c "mysqldump -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE" > basededatos/backup-bd.sql
echo "Backup completado: basededatos/backup-bd.sql"