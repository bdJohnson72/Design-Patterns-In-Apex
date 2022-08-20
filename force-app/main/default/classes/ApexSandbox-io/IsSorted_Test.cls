/**
 * Created by Brooks Johnson on 8/20/2022.
 */

@IsTest
private class IsSorted_Test {
    private static final List<Integer> ASCENDING = new List<Integer>{
            1, 2, 3, 4, 5
    };
    private static final List<Integer> NOT_SORTED = new List<Integer>{
            1, 2, 3, 5, 4
    };
    private static final List<Integer> DESCENDING = new List<Integer>{
            5, 4, 3, 2, 1
    };

    @IsTest
    static void testBehavior() {
        System.assert(true == SortedList.isSorted(ASCENDING));
        System.assert(false == SortedList.isSorted(NOT_SORTED));
        System.assert(true == SortedList.isSorted(DESCENDING));
    }
}