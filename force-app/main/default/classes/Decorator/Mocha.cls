/**
 * Created by brooks.johnson on 4/26/2022.
 */

public with sharing class Mocha extends CondimentDecorator {

    Beverage beverage;

    public Mocha(Beverage beverage) {
        this.beverage = beverage;
    }

    public  override String getDescription(){
        return beverage.getDescription() +  ' Mocha';
    }

    public override Double cost(){
        System.debug('calling mocha.cost');
        return this.beverage.cost() + .20;
    }

}