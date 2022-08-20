/**
 * Created by Brooks Johnson on 8/20/2022.
 */

public with sharing class SortedList {

    public static Boolean isSorted(List<Integer> numbers) {
        if (numbers.size() < 2) {
            return true;
        }
        Integer left = 0;
        Integer right = numbers.size() - 1;
        if (numbers[left] < numbers[right]) {
            //check acsending
            while (left < right) {
                if (numbers[left + 1] < numbers[left]) {
                    return false;
                }
                left++;
            }
        }
        if (numbers[left] > numbers[right]) {
            //check descending
            while (left < right) {
                if (numbers[left + 1] > numbers[left]) {
                    return false;
                }
                left++;
            }
        }
        if (numbers[left] == numbers[right]) {
            //the list needs to be same from left to right
            while (left < right) {
                if (numbers[left + 1] != numbers[left]) {
                    return false;
                }
                left++;
            }

        }
        return true;

    }

}