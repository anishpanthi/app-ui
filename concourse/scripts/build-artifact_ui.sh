#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm run build

ls -l
cd dist
ls -l
cp -R ./dist/* ../app-ui-dist/
cp manifest.yml ../app-ui-dist/
cp Staticfile ../app-ui-dist/
