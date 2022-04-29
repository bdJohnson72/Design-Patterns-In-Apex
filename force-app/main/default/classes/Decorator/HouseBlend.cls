/**
 * Created by brooks.johnson on 4/26/2022.
 */

public with sharing class HouseBlend extends Beverage{

    public HouseBlend(){
        this.description = 'HouseBlend';
    }


    public override Double cost() {
        System.debug('calling huouse blend cose');
        return 1.99;
    }
}