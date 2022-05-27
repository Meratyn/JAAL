#!/bin/bash

rm bundle/*.json
cp schemas/* bundle/
#node bundle/dereference.js > bundle/style.json
#node bundle.js > bundle/jaal-bundle.json
cd bundle; node bundle.js > ../jaal-bundle.json ; cd ..
rm bundle/*.json
mv jaal-bundle.json bundle/