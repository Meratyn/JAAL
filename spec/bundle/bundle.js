const $RefParser = require("@apidevtools/json-schema-ref-parser");
const flatted = require("flatted");

async function bundle(mainSchema) {
  const options = {dereference: {circular: "ignore"}};
  // let schema = await $RefParser.dereference(mainSchema, options);
  // console.log
  let bundled = await $RefParser.bundle(mainSchema);
  // let schema = await $RefParser.dereference(bundled, {dereference: {circular : "ignore", excludedPathMatcher: (path) => path.includes("event")}, resolve: {external: false}});

  console.log(JSON.stringify(bundled));
  // console.log(JSON.stringify(schema));
  // console.log(flatted.stringify(bundled));
}

bundle("./jaal.json");
