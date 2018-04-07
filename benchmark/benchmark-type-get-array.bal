package benchmark;
import ballerina/io;

functionRecord[] functionArray = [];

functionRecord[] functionArray2 = [];

public function getTypeBenchmarkArray() returns (functionRecord[]) {

    functionArray = [
        {functionName:"benchmarkTypeAnyJSONCasting", f:benchmarkTypeAnyJSONCasting},
        {functionName:"printlnAnyVal", f:printlnAnyVal},
        {functionName:"printAnyVal", f:printAnyVal},
        {functionName:"benchmarkIntAddition", f:benchmarkIntAddition},
        {functionName:"benchmarkIntSubtraction", f:benchmarkIntSubtraction},
        {functionName:"benchmarkIntMultiplication", f:benchmarkIntMultiplication},
        {functionName:"benchmarkIntDivision", f:benchmarkIntDivision},
        {functionName:"benchmarkIntTypesAddition", f:benchmarkIntTypesAddition},
        {functionName:"benchmarkFloatAddition", f:benchmarkFloatAddition}
    ];

    return functionArray;

}

public function addToBenchmarkArray(string functionNames) {

    functionArray2 = [{functionName:"benchmarkTypeAnyJSONCasting", f:benchmarkTypeAnyJSONCasting}];

    // functionArray += {functionName:"benchmarkTypeAnyJSONCasting", f:benchmarkTypeAnyJSONCasting} ;
}
