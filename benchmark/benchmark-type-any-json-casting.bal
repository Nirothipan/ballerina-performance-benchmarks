package benchmark;
import ballerina/io;


public function benchmarkTypeAnyJSONCasting() {
    var abc = jsonReturnFunction();
    string strVal = extractFieldValue(abc.PropertyName);
}

function extractFieldValue(json fieldValue) returns (string) {
    match fieldValue {
        string s => { return s; }
        json j => { return "Error"; }
    }
}
