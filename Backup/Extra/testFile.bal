import ballerina/io;
import ballerina/file;

public function main(string[] args) {
    io:println("Hello, World!");

    file:Path dirPath = file:getPath("TestResults");
    var dir = file:createDirectory(dirPath);

    file:Path filePath = file:getPath("TestResults/test.txt");
    var result = file:createFile(filePath);
    io:println(result);

    io:ByteChannel channel =  io:openFile("TestResults/test.txt", "W");


    io:CharacterChannel charChannel = check io:createCharacterChannel(channel, "UTF-8");


    io:println("read file");
    string result3 = check charChannel.readCharacters(1);
    io:println("read file");

}
