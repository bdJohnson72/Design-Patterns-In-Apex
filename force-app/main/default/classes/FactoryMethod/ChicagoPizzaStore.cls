
public with sharing class ChicagoPizzaStore extends PizzaStore {

    /**
     * @description lets be fancy and do this one with a reflective factory method.
     * We are implementing an abstract method from our super class. It does not know or care
     * How we implement create pizza as long we have one.
     * @param pizzaType type of pizza to order
     *
     * @return Pizza
     */
    protected override Pizza createPizza(String pizzaType) {
        Chicago_Pizza__mdt pizza = Chicago_Pizza__mdt.getInstance(pizzaType);
        Type t = Type.forName(pizza.Class_To_Instantiate__c);
        return (Pizza) t.newInstance();
    }
}