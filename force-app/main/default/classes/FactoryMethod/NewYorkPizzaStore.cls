
public with sharing class NewYorkPizzaStore extends PizzaStore {

    /**
     * @description a concrete implementation from our abstract method.
     * The order pizza method is defined in our abstact class and will be inherited.
     * The order pizza method has no idea what concrete classes are involved.
     *
     * @param pizzaType name of pizza to order
     *
     * @return pizza
     */
    protected override Pizza createPizza(String pizzaType) {
        Pizza pizza;
        switch on pizzaType.toLowerCase() {
            when 'cheese' {
                pizza = new NewYorkStyleCheese();
            }
            when 'sausage' {
                pizza = new NewYorkStyleSausage();
            }when 'pepperoni' {
                pizza = new NewYorkStylePepperoni();
            }
        }
        return pizza;
    }
}