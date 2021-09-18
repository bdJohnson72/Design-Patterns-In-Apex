
@IsTest
private class NewYorkPizzaStore_Tests {
    @IsTest
    static void itShouldReturnCheesePizza() {
        //given
        PizzaStore store = new NewYorkPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('cheese');
        Test.stopTest();
        //then
        System.assert(pizza instanceof NewYorkStyleCheese);
    }

    @IsTest
    static void itShouldReturnSausagePizza() {
        //given
        PizzaStore store = new NewYorkPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('sausage');
        Test.stopTest();
        //then
        System.assert(pizza instanceof NewYorkStyleSausage);
    }

    @IsTest
    static void itShouldReturnPepperoniPizza() {
        //given
        PizzaStore store = new NewYorkPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('pepperoni');
        Test.stopTest();
        //then
        System.assert(pizza instanceof NewYorkStylePepperoni);
    }
}