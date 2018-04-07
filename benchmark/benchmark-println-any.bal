package ballerina;

function printlnAnyVal() {
    any val = jsonReturnFunction();
    io:println(val);
}
