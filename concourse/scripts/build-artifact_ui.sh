#!/usr/bin/env bash
set -e

#version=`cat version/number`
cd git-repo
npm install
npm run build

cp -R ./dist/* ../*
cp manifest.yml ../*
cp Staticfile ../*
