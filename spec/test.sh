#!/bin/bash

# ajv option -s: jaal.json is the main schema
# ajv option -r: files *.json but not jaal.json are part of the schema
# ajv option -d: directory for test data
echo "--- Valid schemas -----------------------------"
ajv test --spec=draft2020 -s schemas/jaal.json -r schemas/metadata.json \
-d "test/valid/jaal*.json" --valid

ajv test --spec=draft2020 -s schemas/metadata.json -d "test/valid/metadata*" --valid

echo "--- Invalid schemas -----------------------------"
ajv test --spec=draft2020 -s schemas/jaal.json -r schemas/metadata.json \
-d "test/invalid/jaal*.json" --invalid --errors=text

ajv test --spec=draft2020 -s schemas/metadata.json -d "test/invalid/metadata*" --invalid

# Bundle
#ajv test --spec=draft2020 -s bundle/jaal.json -d "test/valid/*.json" --valid
#ajv test --spec=draft2020 -s bundle/jaal.json -d "test/invalid/*.json" --invalid
