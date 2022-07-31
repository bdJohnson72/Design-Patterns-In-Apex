/**
 * Created by Brooks Johnson on 7/31/2022.
 */

public with sharing class FrequencyCounter {

    public static Map<String, Integer> countDuplicates(List<String> strings) {
        Map<String, Integer> countByWords = new Map<String, Integer>();
        Map<String, Integer> results = new Map<String, Integer>();

        for (String word : strings) {
            if (countByWords.containsKey(word)) {
                countByWords.put(word, countByWords.get(word) + 1);
            } else {
                countByWords.put(word, 1);
            }
        }

        String globalString = '';
        Integer globalmax = 1;
        for (String str : countByWords.keySet()) {
            if (countByWords.get(str) > globalmax) {
                globalString = str;
                globalmax = countByWords.get(str);
            }
        }
        return new Map<String, Integer>{
                globalString => globalmax
        };
    }

}