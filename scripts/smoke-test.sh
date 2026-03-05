#!/usr/bin/env bash
set -euo pipefail

if [ -f ".env" ]; then
  set -a; source .env; set +a
fi

MYSQL_ROOT_PASSWORD="${MYSQL_ROOT_PASSWORD:-root}"

docker exec -it airport_db mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -e "
USE Aerolinea;
SHOW TABLES;
SELECT COUNT(*) AS tarifas FROM tarifa;
SHOW PROCEDURE STATUS WHERE Db='Aerolinea';
"
