#!/bin/sh 

npm install

package='typescript'
if [ `npm list | grep -c $package` -eq 0 ]; 
    then
        echo "TypeScript not detected"
    else
        echo "TypeScript detected"
        npx tsc
fi


echo "Versions"
node -v
npm -v

echo "//$1/:_authToken=$2"  > .npmrc
npm publish