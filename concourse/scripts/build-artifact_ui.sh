#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm run build

cp -R ./dist/* ../app-ui-dist/
cp manifest.yml ../app-ui-dist/
cp Staticfile ../app-ui-dist/
cp -R app-ui/* /app/public/
rm -d app-ui
