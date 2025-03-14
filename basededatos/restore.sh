#!/bin/bash
#Script para restaurar a BD
. ./.env.dev # .env.dev en desenvolvemento, .env.prod en produccion

docker compose exec basededatos bash -c "mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /basededatos/backup-bd.sql"
echo "Restauración completada desde basededatos/backup-bd.sql"