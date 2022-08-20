/**
 * Created by Brooks Johnson on 8/20/2022.
 */

public with sharing class SecondLargest {
    public static Integer onePass(List<Integer> numbers) {
        Integer largest = -2147483647 - 1;
        Integer seccondLargest = -2147483647 - 1 ;
        for (Integer i = 0; i < numbers.size(); i++) {
            if (numbers[i] > largest) {
                seccondLargest = largest;
                largest = numbers[i];
            } else if (numbers[i] > seccondLargest && numbers[i] != largest) {
                seccondLargest = numbers[i];
            }
        }
        return seccondLargest;
    }

    public static Integer sortNums1(List<Integer> nums) {
        Set<Integer> intSet = new Set<Integer>(nums);
        List<Integer> integers = new List<Integer>(intSet);
        integers.sort();
        return integers[intSet.size() - 2];
    }


}