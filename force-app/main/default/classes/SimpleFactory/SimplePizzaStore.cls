
public with sharing class SimplePizzaStore {

    ReflectivePizzaFactory factory;

    /**
     * @description We can pass the appropriate factory in to the constructor at run time
     * @param factory The Factory class we want to use at run time
     */
    public SimplePizzaStore(ReflectivePizzaFactory factory){
        this.factory = factory;
    }
    /**
     * @param type The type of pizza we want from the factory
     *
     * @return a concrete pizza
     */
    public Pizza orderPizza(String type){
        Pizza pizza;
        pizza = factory.createPizza(type);
        //Because we are using the Pizza superclass as the type. We know that any concrete pizza
        //has these methods.
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();

        return pizza;
    }
}