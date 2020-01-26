const toOpenApi = require('json-schema-to-openapi-schema');
//const $RefParser = require("json-schema-ref-parser");
var deref = require('json-schema-deref-sync');
var mySchema = require('./fhir.401.schema.json');

function show_schema(txt, obj) {
 // We want this to show the "results" from the callback function.
  console.log('--------------------'+txt+'------------------------');
  console.log(obj);
  console.log('');
}

 

(async () => {
  const convertedSchema = await toOpenApi(mySchema);
  console.log(convertedSchema);
  
  
	var fs = require('fs');

	fs.writeFile("./fhir.401.openapi-schema.json", JSON.stringify(convertedSchema, null, 4), (err) => {
		if (err) {
			console.error(err);
			return;
		};
		console.log("File has been created");
	});
  
  
})();







/*



const newschema=toOpenApi(deref(mySchema))
show_schema('converted', newschema)

var obj= toOpenApi(mySchema)
var json = JSON.stringify(obj);
var fs = require('fs');

fs.writeFile("./fhir.401.openapi-schema.json", JSON.stringify(obj, null, 4), (err) => {
    if (err) {
        console.error(err);
        return;
    };
    console.log("File has been created");
});


*/
