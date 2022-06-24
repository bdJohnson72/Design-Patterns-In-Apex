/**
 * This is what we do not want
 */

public with sharing class DependentPizzaStore {

     // New is Glue. This class is dependent on 6 other classes to function.
     //We don't really want our Pizza store to have all these dependencies.
     // Get our objects from a factory instead.
    //If we add more types or styles we will always  be modifying the class
    public Pizza createPizza(String style, String type){
        Pizza pizza = null;
        if (style == 'NY') {
            switch on type{
                when 'cheese' {
                    pizza = new NewYorkStyleCheese();
                }
                when 'sausage'{
                    pizza = new NewYorkStyleSausage();
                }
                when 'pepperoni'{
                    pizza = new NewYorkStylePepperoni();
                }
            }
        }
        else if (style == 'Chicago'){
            switch on type{
                when 'cheese' {
                    pizza = new ChicagoStyleCheese();
                }
                when 'sausage'{
                    pizza = new ChicagoStyleSausage();
                }when 'pepperoni'{
                    pizza = new ChicagoStylePepperoni();
                }
            }
        }
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();
        return pizza;
    }

}