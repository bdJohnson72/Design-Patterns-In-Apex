/**
 * Instead of updating our factory every time we need to add a concrete pizza we simple add a value to custom metadata
 * and let the Type class instantiate it.
 * Note this only works with a no argument constructor.
*/


public with sharing class ReflectivePizzaFactory {
    //test
    public Pizza createPizza(String typeOfPizza){
        Pizza__mdt pizza = Pizza__mdt.getInstance(typeOfPizza);
        Type t = Type.forName(pizza.Class_To_Instantiate__c);
        return (Pizza)t.newInstance();
    }
}