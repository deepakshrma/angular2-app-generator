#!/bin/bash
if [[ -z "$1" ]]; then
APP_NAME="angular2app"
else
APP_NAME=$1
fi
mkdir $APP_NAME
mkdir $APP_NAME/app

npm i
cd $APP_NAME

