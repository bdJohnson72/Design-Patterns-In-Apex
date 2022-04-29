/**
 * Created by brooks.johnson on 4/26/2022.
 */

public with sharing class Expresso extends Beverage {

    public Expresso() {
        this.description = 'Expresso';
    }


    public override Double cost() {
        return 2.99;
    }
}