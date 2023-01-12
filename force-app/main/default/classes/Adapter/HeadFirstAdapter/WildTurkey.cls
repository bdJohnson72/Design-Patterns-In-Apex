/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class WildTurkey implements ITurkey{


    public void gobble() {
        System.debug('The wild turkey says gobble gobble');
    }

    public void fly() {
        System.debug('The turkey can fly a short distance');
    }
}