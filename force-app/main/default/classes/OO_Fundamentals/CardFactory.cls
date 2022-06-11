/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class CardFactory {

    public static CreditCard getInstance(PaymentController2.PaymentDetails details) {
        switch on details.cardType.toLowerCase() {
            when 'visa' {
                return new Visa(details);
            } when 'mastercard' {
                return new MasterCard(details);
            } when 'discover' {
                return new Discover(details);
            }
        }
        return null;
    }
}