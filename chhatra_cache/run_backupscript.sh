#!/usr/bin/env bash
set -u
set -o pipefail
set -C
databases="mydatabase"
function run_dump() {
  database_name=$1
  pg_dump -U postgres $database_name > $database_name.sql
}
for database in $databases; do
 run_dump "$database"
date1=$(date +"%Y%m%d_%H%M")
date2=$(date +"%Y-%m-%d_%H:%M")
echo $date1
echo $date2
done
