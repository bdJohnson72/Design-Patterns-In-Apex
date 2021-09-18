/**
 * @description this is the super class that all our Pizzas will inherit from.
 * It is important to understand that when someone says program to an interface and not
 * an implementation they really mean program to a super type. Not necessarily to the Interface data structure.
 * In Apex this could be a virtual class and abstract class or an interface
 */

public with sharing abstract class Pizza {

    //All our concrete  pizzas will need to implement these methods

    public abstract void prepare();
    public abstract void bake();
    public  abstract void cut();
    public abstract void box();
}