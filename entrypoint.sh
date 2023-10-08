#!/bin/sh 

npm install
echo "//$1/:_authToken=$2"  > .npmrc
npm publish