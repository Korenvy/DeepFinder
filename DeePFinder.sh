#!/bin/bash

RED_SMALL="\033[0;31m"
GREEN_PASTEL="\033[1;32m"
GRAY_DARK="\033[0;90m"
RESET="\033[0m"

clear
echo -e "${RED_SMALL}D   E   E   P"
echo -e "  F   I   N   D   E   R${RESET}\n"

echo -e "${RED_SMALL} TELEGRAM: @Korenvy | Deep Finder Tool"

DICT=(
".env" ".git/config" ".htaccess" ".htpasswd" "config.php" "wp-config.php"
"backup.zip" "db.sql" "admin/" "admin/login.php" "login.php" "user/login"
"dashboard/" "cpanel/" "server-status" "phpinfo.php" "web.config" "config.json"
"config.yaml" "config.yml" "database.sql" "dump.sql" "site_backup.tar.gz"
"backup.tar.gz" "old/" "private/" "test/" "dev/" "staging/" "tmp/" "temp/"
"log/" "logs/" "error.log" "access.log" "composer.json" "composer.lock"
"package.json" "yarn.lock" "docker-compose.yml" "Dockerfile" "README.md"
"LICENSE" "api/" "api/v1/" "api/test/" "secrets/" "secret/" "token/" "key/"
"keys/" "id_rsa" "id_rsa.pub" ".ssh/" ".aws/credentials" "wp-content/"
# Más combinaciones opcionales aquí...
)

check_url() {
  url=$1
  status=$(curl -k -s -o /dev/null -w "%{http_code}" -L --max-time 10 "$url")

  if [[ "$status" == "200" || "$status" == "301" || "$status" == "302" ]]; then
    echo -e "${GRAY_DARK}[-]${RESET} ${GREEN_PASTEL}${url} [${status}]${RESET}"
  else
    echo -e "${GRAY_DARK}[-]${RESET} ${GRAY_DARK}${url} [${status}]${RESET}"
  fi
}

echo -ne "${GREEN_PASTEL}Ingrese la URL para buscar: ${RESET}"
read TARGET

TARGET="${TARGET%/}"

echo ""

for path in "${DICT[@]}"; do
  url="$TARGET/$path"
  check_url "$url"
done

echo -e "\n${GREEN_PASTEL}Scan completo.${RESET}"
