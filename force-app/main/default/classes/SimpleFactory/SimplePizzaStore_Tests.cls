/**
 * Created by brooks on 9/18/2021.
 */

@IsTest
private class SimplePizzaStore_Tests {
    @IsTest
    static void itShouldMakeAPizza() {
        //given
        SimplePizzaStore store = new SimplePizzaStore(new ReflectivePizzaFactory());
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('cheese');
        Test.stopTest();
        //then
        System.assert(pizza instanceof CheesePizza, 'It should make a cheese pizza');
    }
}