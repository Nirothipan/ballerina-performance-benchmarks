package benchmark;
import ballerina / io;

public function getForkJoinBenchmarkArray() returns (functionRecord[]) {

functionRecord[] functionArray = [];

functionArray = [
{functionName:"benchmarkForkJoinXMLToJSON2workers", f:benchmarkForkJoinXMLToJSON2workers}
];

return functionArray;
}


public function benchmarkForkJoinXMLToJSON2workers()
{
fork {
worker w1 {
xml x = xml `<book>The Lost World</book>`;
(
"<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>"
);

//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
io:println(j1);

}
worker w2 {
xml x = xml `<book>The Lost World</book>`;

//var x = <xml>(
//"<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
//"<h:name>Anne</h:name>" +
//"<h:address><h:street>Main</h:street>" +
//"<h:city>94</h:city></h:address>" +
//"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
//"</h:Store>");

//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
} join (all) (map results) {

var resultWorker1 = < any[] > results["w1"];
var resultWorker2 = < any[] > results["w2"];
//  io:println(resultWorker1);

//var jsonWorker1 = <json>resultWorker1[0];
//var jsonWorker2 = <json>resultWorker2[0];

}
}


public function getForkJoinBenchmarkArray () returns (functionStruct[] array)
{
functionStruct[] functionArray = [];
functionArray = [{functionName:"benchmarkForkJoinXMLToJSON2workers", f:benchmarkForkJoinXMLToJSON2workers},
{functionName:"benchmarkForkJoinXMLToJSON3workers", f:benchmarkForkJoinXMLToJSON3workers},
{functionName:"benchmarkForkJoinXMLToJSON4workers", f:benchmarkForkJoinXMLToJSON4workers},
{functionName:"benchmarkForkJoinXMLToJSON5workers", f:benchmarkForkJoinXMLToJSON5workers},
{functionName:"benchmarkForkJoinXMLToJSON6workers", f:benchmarkForkJoinXMLToJSON6workers},
{functionName:"benchmarkForkJoinXMLToJSON7workers", f:benchmarkForkJoinXMLToJSON7workers},
{functionName:"benchmarkForkJoinXMLToJSON8workers", f:benchmarkForkJoinXMLToJSON8workers},
{functionName:"benchmarkForkJoinXMLToJSON9workers", f:benchmarkForkJoinXMLToJSON9workers},
{functionName:"benchmarkForkJoinXMLToJSON10workers", f:benchmarkForkJoinXMLToJSON10workers}
];
return functionArray;
}

public function benchmarkForkJoinXMLToJSON2workers ()
{
fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];

}

}


function benchmarkForkJoinXMLToJSON3workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
}
}


function benchmarkForkJoinXMLToJSON4workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];

}
}


function benchmarkForkJoinXMLToJSON5workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker5, _ = (json)resultWorker5[0];

}
}

function benchmarkForkJoinXMLToJSON6workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w6 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}

} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var resultWorker6, _ = (any[])results["w6"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker6, _ = (json)resultWorker6[0];

}
}


function benchmarkForkJoinXMLToJSON7workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w6 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w7 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}


} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var resultWorker6, _ = (any[])results["w6"];
var resultWorker7, _ = (any[])results["w7"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker6, _ = (json)resultWorker6[0];
var jsonWorker7, _ = (json)resultWorker7[0];

}
}

function benchmarkForkJoinXMLToJSON8workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w6 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w7 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w8 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}


} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var resultWorker6, _ = (any[])results["w6"];
var resultWorker7, _ = (any[])results["w7"];
var resultWorker8, _ = (any[])results["w8"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker6, _ = (json)resultWorker6[0];
var jsonWorker7, _ = (json)resultWorker7[0];
var jsonWorker8, _ = (json)resultWorker8[0];

}

}

function benchmarkForkJoinXMLToJSON9workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w6 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w7 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w8 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}


} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var resultWorker6, _ = (any[])results["w6"];
var resultWorker7, _ = (any[])results["w7"];
var resultWorker8, _ = (any[])results["w8"];
var resultWorker9, _ = (any[])results["w9"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker6, _ = (json)resultWorker6[0];
var jsonWorker7, _ = (json)resultWorker7[0];
var jsonWorker8, _ = (json)resultWorker8[0];
var jsonWorker9, _ = (json)resultWorker9[0];

}
}

function benchmarkForkJoinXMLToJSON10workers ()
{

fork {
worker w1 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;

}
worker w2 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w3 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w4 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w5 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w6 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w7 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w8 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w9 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}
worker w10 {
var x, _ = < xml >("<h:Store id = \"AST\" xmlns:h=\"http://www.test.com\">" +
"<h:name>Anne</h:name>" +
"<h:address><h:street>Main</h:street>" +
"<h:city>94</h:city></h:address>" +
"<h:code><h:item>4</h:item><h:item>8</h:item></h:code>" +
"</h:Store>");
//Convert to JSON with default attribute prefix and with namespaces.
json j1 = x.toJSON({});
j1 -> fork ;
}



} join (all) (map results) {

var resultWorker1, _ = (any[])results["w1"];
var resultWorker2, _ = (any[])results["w2"];
var resultWorker3, _ = (any[])results["w3"];
var resultWorker4, _ = (any[])results["w4"];
var resultWorker5, _ = (any[])results["w5"];
var resultWorker6, _ = (any[])results["w6"];
var resultWorker7, _ = (any[])results["w7"];
var resultWorker8, _ = (any[])results["w8"];
var resultWorker9, _ = (any[])results["w8"];
var resultWorker10, _ = (any[])results["w8"];
var jsonWorker1, _ = (json)resultWorker1[0];
var jsonWorker2, _ = (json)resultWorker2[0];
var jsonWorker3, _ = (json)resultWorker3[0];
var jsonWorker4, _ = (json)resultWorker4[0];
var jsonWorker6, _ = (json)resultWorker6[0];
var jsonWorker7, _ = (json)resultWorker7[0];
var jsonWorker8, _ = (json)resultWorker8[0];
var jsonWorker9, _ = (json)resultWorker9[0];
var jsonWorker10, _ = (json)resultWorker10[0];

}
}
