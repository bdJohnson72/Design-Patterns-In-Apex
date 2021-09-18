/**
 * @description Unlike the simple factory we are will be using a super class for our pizza store
 * and moving the create pizza method into it.
 */
public with sharing abstract class PizzaStore {

    /**
     * @description All concrete classes inherit this method
     * @param pizzaType
     *
     * @return
     */
    public Pizza orderPizza(String pizzaType) {
        Pizza pizza;

        pizza = createPizza(pizzaType);
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();

        return pizza;
    }

    /**
     * @Description the abstract method means that all concrete classes
     * must implement a version of this method. It will be our new factory.
     * @param pizzaType
     *
     * @return
     */
    protected abstract Pizza createPizza(String pizzaType);
}