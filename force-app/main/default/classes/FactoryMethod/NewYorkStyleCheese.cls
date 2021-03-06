/**
 * Created by brooks on 9/18/2021.
 */

public with sharing class NewYorkStyleCheese extends Pizza {
    private final String name = 'New York style cheese pizza';

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