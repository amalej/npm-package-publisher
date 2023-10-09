#!/bin/sh 

npm install
npx tsc || echo "TypeScript not detected"


echo "Versions"
node -v
npm -v

echo "//$1/:_authToken=$2"  > .npmrc
npm publish