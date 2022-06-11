/**
 * Created by Brooks Johnson on 6/11/2022.
 */

@IsTest
private class CardFactory_Tests {
    @IsTest
    static void ItShouldReturnVisa() {
        //given
        CreditCard card = null;
        PaymentController2.PaymentDetails details = new PaymentController2.PaymentDetails('fake@fake.net', 'Visa', '3/3/2020',
                '1234', '1234', 10.0);
        //when
        card = CardFactory.getInstance(details);
        //then
        System.assert(card instanceof Visa, 'It should return the correct instance');
    }
}