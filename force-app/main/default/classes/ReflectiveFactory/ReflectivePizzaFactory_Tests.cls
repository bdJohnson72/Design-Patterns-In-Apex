
@IsTest
private class ReflectivePizzaFactory_Tests {
    @IsTest
    static void itShouldReturnCheesePizza() {

        ReflectivePizzaFactory factory = new ReflectivePizzaFactory();
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
        ReflectivePizzaFactory factory = new ReflectivePizzaFactory();
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
        ReflectivePizzaFactory factory = new ReflectivePizzaFactory();
        Pizza pizza;
        //when
        Test.startTest();
        pizza = factory.createPizza('pepperoni');
        Test.stopTest();
        //then
        System.assert(pizza instanceof PepperoniPizza);
    }
}