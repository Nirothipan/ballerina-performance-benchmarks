import ballerina/io;

public function main(string[] args) {
    string resultFileName = untaintedReturn(<string>args[0]);
    io:ByteChannel channel = io:openFile(resultFileName, "W");
}

public function untaintedReturn(string input) returns @untainted string {
    return input;
}

