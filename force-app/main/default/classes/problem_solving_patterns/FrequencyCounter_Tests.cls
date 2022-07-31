/**
 * Created by Brooks Johnson on 7/31/2022.
 */

@IsTest
public with sharing class FrequencyCounter_Tests {

    @isTest
    static void itShouldCountMostFrequent() {
        //given
        List<String> words = new List<String>{
                'hello', 'world', 'dog', 'cat', 'taco', 'dog', 'cat', 'dog'
        };
        //when
        Map<String, Integer> mostFrequentByCount = FrequencyCounter.countDuplicates(words);
        System.assert(mostFrequentByCount.get('dog') == 3);
    }

}