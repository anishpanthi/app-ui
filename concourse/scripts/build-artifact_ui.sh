#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm run build

cp package.json ../app-ui-dist
#cp server.js ../app-ui-dist
cp nginx.config ../app-ui-dist
cp mime.types ../app-ui-dist
cp -R ./dist ../app-ui-dist
cp manifest.yml ../app-ui-dist
