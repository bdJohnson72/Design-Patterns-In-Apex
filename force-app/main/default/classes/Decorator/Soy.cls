/**
 * Created by brooks.johnson on 4/26/2022.
 */

public with sharing class Soy extends CondimentDecorator{

Beverage beverage;

    public Soy(Beverage beverage){
        this.beverage = beverage;
    }


    public override String getDescription() {
        return this.beverage.description + ' Soy';
    }

    public override Double cost() {
        System.debug('calling soy cost');
        return this.beverage.cost() + .50;
    }
}