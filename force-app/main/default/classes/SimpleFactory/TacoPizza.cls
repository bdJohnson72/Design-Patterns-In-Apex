
public with sharing class TacoPizza extends Pizza {
    private final String name = 'Taco Pizza';

    public override void prepare(){
        System.debug('Preparing a ' + this.name);
    }

    public override void bake(){
        System.debug('Baking a ' + this.name);
    }

    public override void cut(){
        System.debug('Cutting a ' + this.name);
    }

    public override void box(){
        System.debug('Boxing a ' + this.name);
    }
}