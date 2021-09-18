
public with sharing class PepperoniPizza extends Pizza{

    private final String name = 'Pepperoni Pizza';

    public override void prepare() {
        System.debug('Preparing a ' + this.name);
    }

    public override void bake() {
        System.debug('baking ' + this.name);
    }

    public override void cut() {
        System.debug('cutting ' + this.name);
    }

    public override void box() {
        System.debug('boxing ' + this.name);
    }
}