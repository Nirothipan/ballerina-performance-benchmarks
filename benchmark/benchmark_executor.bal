package benchmark;

import ballerina.io;
import ballerina.time;

public struct functionStruct {
    string functionName;
    function ()  f;
}

public function main (string[] args) {

    var warmupIterations, _ = <int>args[0];
    var benchmarkIterations, _ = <int>args[1];
    var resultFileName, _ = <string>args[2];
    io:println("Starting");
    if (lengthof args < 3)
    {
        io:println("ERROR: Please specify the number of warm-up iterations, benchmark iterations, result file name");
        return;
    }
    executeBenchmarks(getForkJoinBenchmarkArray(), warmupIterations, benchmarkIterations);
}


function executeBenchmarks(functionStruct [] functionArray, int warmupIterations, int benchmarkIterations)
{
    foreach key, value in functionArray {
        io:println(value.functionName);
        var temp = value;
        time:Time warmupstartTime = time:currentTime();
        int i = 0;
        while (i < warmupIterations) {
            i = i + 1;
            function ()  f = value.f;
            f();
        }
        time:Time startTime = time:currentTime();
        io:println(startTime);
        i = 0;
        while (i < benchmarkIterations) {
            i = i + 1;
            function ()  f = value.f;
            f();
        }
        time:Time endTime = time:currentTime();

        io:println("Start time = " +  (startTime.time) + " ms");
        io:println("End time = " +  (endTime.time) + " ms");
        io:println("Total time = " +  (endTime.time-startTime.time) + " ms");
        io:println("Number of Iterations = " +  benchmarkIterations  + " ");
        io:println("Average Latency = " +  ((((float)(endTime.time-startTime.time))/(float) benchmarkIterations)) + "ms");
        io:println("TPS  = " +  (benchmarkIterations * 1000)/((float)(endTime.time-startTime.time))  + " operations/second");
    }
}