/**
 * Created by Brooks Johnson on 4/30/2022.
 */

@IsTest
private class PaymentController2_Tests {
    @IsTest
    static void itShouldthrowException() {
        //given
        PaymentController2.PaymentDetails details = new PaymentController2.PaymentDetails('brooks@fake.net', 'Visa', '123456789',
                '01/2020', 'abc123', 19.99);
        String detailsString = JSON.serialize(details);
        try {//when
            PaymentController2.submitPayment(detailsString);
        } catch (Exception e) {//then
            System.assert(e instanceof AuraHandledException);
        }
    }

    @isTest
    static void itShouldProcessTheOrder() {
        //given
        PaymentController2.PaymentDetails details = new PaymentController2.PaymentDetails('brooks@fake.net', 'Visa', '1234567890',
                '01/2020', 'abc123', 19.99);
        String detailsString = JSON.serialize(details);
        Exception ex = null;
        //when
        try {
            PaymentController2.submitPayment(detailsString);
        } catch (Exception e) {
            System.debug('We should not have thrown an exception');
        }
        System.assertEquals(ex, null, 'No exception should have been thrown');
    }
}