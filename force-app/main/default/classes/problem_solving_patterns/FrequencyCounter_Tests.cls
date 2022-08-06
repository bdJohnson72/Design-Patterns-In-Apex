/**
 * Created by Brooks Johnson on 7/31/2022.
 */

@IsTest
public with sharing class FrequencyCounter_Tests {

    @isTest
    static void itShouldCountMostFrequent() {
        //given
        //note on conditions it is assumed there will always be a winner
        List<String> words = new List<String>{
                'hello', 'world', 'dog', 'cat', 'taco', 'taco', 'dog', 'cat', 'dog'
        };
        //when
        Map<String, Integer> mostFrequentByCount = FrequencyCounter.countDuplicates(words);
        //then
        System.assert(mostFrequentByCount.get('dog') == 3);
    }

}