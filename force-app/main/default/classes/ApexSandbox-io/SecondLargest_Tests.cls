/**
 * Created by Brooks Johnson on 8/20/2022.
 */

@IsTest
private class SecondLargest_Tests {
    private static final List<Integer> NUMS = new List<Integer>{
            1, 4, 78, -10, -300, 100, 100, 100, 99, 50, 41
    };
    private static final List<Integer> ALL_NEGATIVES = new List<Integer>{
            -1, -4, -78, -10, -300, -100, -100, -100, -99, -50, -41
    };
    @IsTest
    static void onePassTest() {
        Double cpuStart = Limits.getCpuTime();
        Integer result = SecondLargest.onePass(NUMS);
        Double cpuEnd = Limits.getCpuTime();
        System.debug(cpuEnd - cpuStart);
        System.assert(result == 99);
        result = SecondLargest.onePass(ALL_NEGATIVES);
        System.debug(result);
        System.assert(result == -4);
    }

    @IsTest
    static void sortedFirst() {
        Double cpuStart = Limits.getCpuTime();
        Integer result = SecondLargest.sortNums1(NUMS);
        Double cpuEnd = Limits.getCpuTime();
        System.debug(cpuEnd - cpuStart);
        System.assert(result == 99);
        System.assert(-4 == SecondLargest.sortNums1(ALL_NEGATIVES));
    }

}