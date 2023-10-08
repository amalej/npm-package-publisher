#!/bin/sh 

npm install
npm run build
echo "//$1/:_authToken=$2"  > .npmrc
npm publish