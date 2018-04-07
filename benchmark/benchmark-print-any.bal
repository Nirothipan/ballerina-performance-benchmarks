package ballerina;

function printAnyVal() {
    any val = jsonReturnFunction();
    io:print(val);
}
