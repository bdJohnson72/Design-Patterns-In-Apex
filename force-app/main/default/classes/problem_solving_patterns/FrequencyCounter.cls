/**
 * Created by Brooks Johnson on 7/31/2022.
 */

public with sharing class FrequencyCounter {

    public static Map<String, Integer> countDuplicates(List<String> strings) {
        // 'hello', 'world', 'dog', 'cat', 'taco', 'dog', 'cat', 'dog'
        Map<String, Integer> countByWords = new Map<String, Integer>();

        for (String word : strings) {
            if (countByWords.containsKey(word)) {
                countByWords.put(word, countByWords.get(word) + 1);
            } else {
                countByWords.put(word, 1);
            }
        }

        String globalString = '';
        Integer globalMax = 1;
        for (String str : countByWords.keySet()) {
            if (countByWords.get(str) > globalMax) {
                globalString = str;
                globalMax = countByWords.get(str);
            }

        }
        return new Map<String, Integer>{
                globalString => globalMax
        };
    }

    public static List<Integer> twoSum(List<Integer> values, Integer target) {
        //  values  = [2,7,11,15], target = 9
        // 9 - 2 = 7
        // map 7 => 0
        Map<Integer, Integer> complementMap = new Map<Integer, Integer>();
        for (Integer i = 0; i < values.size(); i++) {
            if (complementMap.containsKey(values[i])) {
                return new List<Integer>{
                        complementMap.get(values[i]), i
                };
            } else {
                Integer complement = target - values[i];
                complementMap.put(complement, i);
            }
        }
        return null;
    }

}