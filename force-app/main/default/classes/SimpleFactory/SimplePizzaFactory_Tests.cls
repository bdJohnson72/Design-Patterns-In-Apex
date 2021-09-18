
@IsTest
private class SimplePizzaFactory_Tests {
    @IsTest
    static void itShouldReturnCheesePizza() {
        //given
        SimplePizzaFactory factory = new SimplePizzaFactory();
        Pizza pizza;
        //when
        Test.startTest();
        pizza = factory.createPizza('cheese');
        Test.stopTest();
        //then
        System.assert(pizza instanceof CheesePizza);
    }

    @IsTest
    static void itShouldReturnTacoPizza(){
        //given
        SimplePizzaFactory factory = new SimplePizzaFactory();
        Pizza pizza;
        //when
        Test.startTest();
        pizza = factory.createPizza('taco');
        Test.stopTest();
        //then
        System.assert(pizza instanceof TacoPizza);
    }

    @IsTest
    static void itShouldReturnPepperoniPizza(){
        //given
        SimplePizzaFactory factory = new SimplePizzaFactory();
        Pizza pizza;
        //when
        Test.startTest();
        pizza = factory.createPizza('pepperoni');
        Test.stopTest();
        //then
        System.assert(pizza instanceof PepperoniPizza);
	}
}