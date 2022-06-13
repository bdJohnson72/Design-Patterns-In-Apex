/**
 * Created by brooks.johnson on 6/13/2022.
 * This version will fail because poprock extends pop..
 */

public with sharing class MusicPriceCalculator {
    public static void calculatePrice(Music.Pop m) {
        System.debug('Calculate price of Pop Music') ;
    }

    public static void calculatePrice(Music.Rock m) {
        System.debug('Calculate price of Rock Music') ;
    }

    public static void calculatePrice(Music.ElectronicMusic m) {
        System.debug('Calculate price of Electronic  music');

    }

    public static void calculatePrice(Music.PopRock m){
        System.debug('Calculate price of PopRock Music') ;
    }
}