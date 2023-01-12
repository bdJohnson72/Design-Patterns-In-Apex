/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class Mallard implements IDuck {


    public void quack() {
        System.debug('The mallard says quack quack');
    }

    public void fly() {
        System.debug('The maallard duck is flying');
    }
}