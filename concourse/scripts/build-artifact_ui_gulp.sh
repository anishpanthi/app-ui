#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm install gulp-cli -g
npm install gulp -D
gulp build

cp -R ./dist/* ../app-ui-dist/
cp manifest.yml ../app-ui-dist/
cp Staticfile ../app-ui-dist/
