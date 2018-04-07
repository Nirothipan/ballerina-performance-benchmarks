package benchmark;

import ballerina/io;
import ballerina/time;
import ballerina/file;

public type functionRecord {
    string functionName;
    function () f;
};

public function main(string[] args) {

    if (lengthof args < 3) {
        io:println("ERROR: Please specify the number of warm-up iterations, benchmark iterations, result file name");
        return;
    }

    var warmupIterations = check <int>args[0];
    var benchmarkIterations = check <int>args[1];
    string resultFileName = <string>args[2];

    io:println("Starting");

  // executeBenchmarks(getForkJoinBenchmarkArray(), warmupIterations, benchmarkIterations, resultFileName);

    executeBenchmarks(getTypeBenchmarkArray(), warmupIterations, benchmarkIterations, resultFileName);
    io:println("\nTests End ");

}

function executeBenchmarks(functionRecord[] functionArray, int warmupIterations, int benchmarkIterations, string resultFileName)
{
    file:Path dirPath = file:getPath("TestResults");
    var dir2 = file:delete(dirPath);
    var dir = file:createDirectory(dirPath);

    file:Path filePath = file:getPath("TestResults/" + resultFileName + ".txt");
    var result = file:createFile(filePath);

    string fileLocation = "TestResults/results.txt";

    //string fileLocation = "TestResults/" + resultFileName + ".txt";
    io:ByteChannel channel = io:openFile(fileLocation, "W");
    io:CharacterChannel charChannel = check io:createCharacterChannel(channel, "UTF-8");

    int result11 = check charChannel.writeCharacters("Function_Name", 0);
    int result12 = check charChannel.writeCharacters("\t\t\t\t\t\t Start_time ", 0);
    int result13 = check charChannel.writeCharacters("\t End_time ", 0);
    int result14 = check charChannel.writeCharacters("\t\t Total_time ", 0);
    int result15 = check charChannel.writeCharacters("\tNo._of_Iterations ", 0);
    int result16 = check charChannel.writeCharacters("\tAverage_Latency", 0);
    int result17 = check charChannel.writeCharacters("\t\tTPS_operations/second", 0);

    foreach key, value in functionArray {
        var temp = value;
        time:Time warmupstartTime = time:nanoTime();
        int i = 0;
        while (i < warmupIterations) {
            i = i + 1;
            function () f = value.f;
            f();
        }
        time:Time startTime = time:nanoTime();
        i = 0;
        while (i < benchmarkIterations) {
            i = i + 1;
            function () f = value.f;
            f();
        }

        time:Time endTime = time:nanoTime();

        int result4 = check charChannel.writeCharacters("\n" + value.functionName, 0);
        int result5 = check charChannel.writeCharacters("\t" + startTime.time, 0);
        int result6 = check charChannel.writeCharacters("\t" + endTime.time, 0);
        int result7 = check charChannel.writeCharacters("\t" + endTime.time, 0);
        int result8 = check charChannel.writeCharacters("\t\t\t" + benchmarkIterations, 0);
        int result9 = check charChannel.writeCharacters("\t\t\t" + <float>(endTime.time - startTime.time) / <float>
            benchmarkIterations + " ns", 0);
        int result10 = check charChannel.writeCharacters(("\t" + (benchmarkIterations * 1000000000) / (<float>
            (endTime.time - startTime.time))), 0);
    }
}
