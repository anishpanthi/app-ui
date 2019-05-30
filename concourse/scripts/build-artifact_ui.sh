#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm run build
#npm install -g @angular/cli
#ng analytics off
#ng build --prod

cp package.json ../app-ui-dist
cp server.js ../app-ui-dist
cp -R ./dist ../app-ui-dist
cp manifest.yml ../app-ui-dist
