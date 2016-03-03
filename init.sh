#!/bin/bash
if [[ -z "$1" ]]; then
APP_NAME="angular2app"
else
APP_NAME=$1
fi
mkdir $APP_NAME
mkdir $APP_NAME/app
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp $SCRIPT_DIR/{index.html,package.json,tsconfig.json,typings.json} $APP_NAME/
cp $SCRIPT_DIR/app/* $APP_NAME/app/
echo "Installing node package, It will take time"
sleep 3
npm i
echo "Starting your app, see logs: Thanks :-)"
sleep 3
npm start