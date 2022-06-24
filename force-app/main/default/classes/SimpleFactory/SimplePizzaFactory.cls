/**
 * @description From Head First Design Patterns. The authors feel that this not technically a design pattern.
 * Because it is not part of the GOF book. But  this type of simple implementation often serves me well.
 *
 * The flexibility here comes from the super class. We can have Pizza on the left hand side of the =
 * But a concrete pizza class on the left
*/

public with sharing class SimplePizzaFactory implements IPizzaFactory{

    public Pizza createPizza(String typeOfPizza) {
        Pizza pizza = null;
        switch on typeOfPizza.toLowerCase() {
            when 'cheese' {
                pizza = new CheesePizza();
            }
            when 'taco' {
                pizza = new TacoPizza();
            }when 'pepperoni' {
                pizza = new PepperoniPizza();
            }
        }
        return pizza;
     }
}