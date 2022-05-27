const $RefParser = require("@apidevtools/json-schema-ref-parser");
const CircularJSON = require("circular-json");

async function bundle(mainSchema) {
  const options = {resolve: {external: false}};
  let schema = await $RefParser.dereference(mainSchema, options);

  // console.log(JSON.stringify(bundled));
  // console.log(JSON.stringify(schema));
  console.log(JSON.stringify(schema));
}

bundle("./schemas/style.json");
