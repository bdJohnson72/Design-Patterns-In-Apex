
@IsTest
private class ChicagoPizzaStore_Tests {
    @IsTest
    static void itShouldReturnCheesePizza() {
        //given
        PizzaStore store = new ChicagoPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('cheese');
        Test.stopTest();
        //then
        System.assert(pizza instanceof ChicagoStyleCheese);
    }

    @IsTest
    static void itShouldReturnPepperoniPizza() {
        //given
        PizzaStore store = new ChicagoPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('pepperoni');
        Test.stopTest();
        //then
        System.assert(pizza instanceof ChicagoStylePepperoni);
    }

    @IsTest
    static void itShouldReturnSausagePizza() {
        //given
        PizzaStore store = new ChicagoPizzaStore();
        //when
        Test.startTest();
        Pizza pizza = store.orderPizza('sausage');
        Test.stopTest();
        //then
        System.assert(pizza instanceof ChicagoStyleSausage);
    }
}