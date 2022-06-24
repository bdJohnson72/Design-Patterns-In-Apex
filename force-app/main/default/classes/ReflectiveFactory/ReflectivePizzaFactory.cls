/**
 * Instead of updating our factory every time we need to add a concrete pizza we simple add a value to custom metadata
 * and let the Type class instantiate it.
 * Note this only works with a no argument constructor.
*/

/*In object-oriented programming languages, reflection allows inspection of classes, interfaces, fields and methods
at runtime without knowing the names of the interfaces, fields, methods at compile time.
It also allows instantiation of new objects and invocation of methods.*/

public with sharing class ReflectivePizzaFactory  implements IPizzaFactory{
    //test
    public Pizza createPizza(String typeOfPizza){
        Pizza__mdt pizza = Pizza__mdt.getInstance(typeOfPizza);
        Type t = Type.forName(pizza.Class_To_Instantiate__c);
        return (Pizza)t.newInstance();
    }
}