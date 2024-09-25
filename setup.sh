#! /usr/bin/env bash

echo -n "App name: "
read -r APP_NAME
APP_NAME_CAPITAL="${APP_NAME^}"
APP_NAME_UPPERCASE="${APP_NAME^^}"

echo -n "App description: "
read -r APP_DESCRIPTION

echo -n "App port: "
read -r APP_PORT

echo -n "Author name: "
read -r AUTHOR_NAME

echo -n "Author email: "
read -r AUTHOR_EMAIL

echo -n "Docker org: "
read -r DOCKER_ORG

echo "Updating stub files..."
sed -i '' "s/\${APP_NAME}/${APP_NAME}/g" $(git ls-files | grep -v setup.sh)
sed -i '' "s/\${APP_NAME}/${APP_NAME}/g" $(git ls-files | grep -v setup.sh)
