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

    file:Path filePath = file:getPath("TestResults/" + resultFileName + ".csv");
    var result = file:createFile(filePath);

    string fileLocation = "TestResults/results.csv";

    //string fileLocation = "TestResults/" + resultFileName + ".csv";
    io:ByteChannel channel = io:openFile(fileLocation, "W");
    io:CharacterChannel charChannel = check io:createCharacterChannel(channel, "UTF-8");

  //  int resultWrite = check charChannel.writeCharacters("Function_Name,Start time,End time,Total time in ns,No. of Iterations,Average Latency in ns,TPS (operations/sec)", 0);

    int resultWrite = check charChannel.writeCharacters("Function_Name,Total Time (ms),Total Time (ns),Average Latency (ns),Throughput (operations/second) ", 0);

    foreach key, value in functionArray {

        var temp = value;
        time:Time warmupstartTime = time:nanoTime();
        int i = 0;

        while (i < warmupIterations) {
            i = i + 1;
            function () f = value.f;
            f();
        }

        time:Time startTimeMilli = time:currentTime();

        time:Time startTime = time:nanoTime();

        i = 0;

        io:println(value.functionName);

        while (i < benchmarkIterations) {
            i = i + 1;
            function () f = value.f;
            f();
        }

        time:Time endTime = time:nanoTime();

        time:Time endTimeMilli = time:currentTime();


        resultWrite = check charChannel.writeCharacters("\n" + value.functionName + ",", 0);
        //resultWrite = check charChannel.writeCharacters(startTime.time + ",", 0);
        //resultWrite = check charChannel.writeCharacters(endTime.time + ",", 0);

        int totalTime = endTime.time - startTime.time;

        int totalTimeMilli = endTimeMilli.time - startTimeMilli.time;

        resultWrite = check charChannel.writeCharacters(totalTimeMilli + ",", 0);
        resultWrite = check charChannel.writeCharacters(totalTime + ",", 0);

      //  resultWrite = check charChannel.writeCharacters(benchmarkIterations + ",", 0);

        float avgLatency = (<float>(endTime.time - startTime.time) / <float>benchmarkIterations);

        resultWrite = check charChannel.writeCharacters(avgLatency + ",", 0);

        float tps = 1000000000 / avgLatency;

        resultWrite = check charChannel.writeCharacters(" " + tps, 0);
    }
}
