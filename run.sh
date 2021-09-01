#!/bin/bash
[ -z "$APP_HOME" ] && export APP_HOME=$(pwd)
[ -z "$PORT" ] && export PORT=8080
[ -z "$GF_SERVER_HTTP_PORT" ] && export GF_SERVER_HTTP_PORT=$PORT

[ -z "$DATABASE_TYPE" ] && export DATABASE_TYPE="postgres"
[ -z "$POSTGRESQL_ADDON_URI" ] && export POSTGRESQL_ADDON_URI="postgresql://grafan:grafana@127.0.0.1:5432/grafana"
[ -z "$GF_DATABASE_URL" ] && export GF_DATABASE_URL="$POSTGRESQL_ADDON_URI"
cd grafana-${GRAFANA_VERSION}
./bin/grafana-server
