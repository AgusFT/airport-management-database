#!/usr/bin/env bash
set -euo pipefail

# cargar .env si existe (sin depender de herramientas externas)
if [ -f ".env" ]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

MYSQL_ROOT_PASSWORD="${MYSQL_ROOT_PASSWORD:-root}"

exec docker exec -it airport_db mysql -uroot -p"$MYSQL_ROOT_PASSWORD" Aerolinea
