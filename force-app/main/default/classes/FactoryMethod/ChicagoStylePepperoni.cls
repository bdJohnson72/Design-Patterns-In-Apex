
public with sharing class ChicagoStylePepperoni extends Pizza {

    private final String name = 'Chicago style cheese pizza';

    public override void prepare() {
        System.debug('Preparing ' + name);
    }

    public override void bake() {
        System.debug('Baking ' + name);
    }

    public override void cut() {
        System.debug('Cutting ' + name);
    }

    public override void box() {
        System.debug('Boxing ' + name);
    }

}