/**
 * Created by brooks.johnson on 4/26/2022.
 */

public with sharing class HouseBlend extends Beverage{

    public HouseBlend(){
        this.description = 'HouseBlend';
    }


    public override Double cost() {
        System.debug('calling house blend cost');
        return 1.99;
    }


    public override String getDescription() {
        return this.description;
    }
}