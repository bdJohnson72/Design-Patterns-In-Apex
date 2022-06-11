/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class Visa extends CreditCard {

    public Visa(PaymentController2.PaymentDetails details) {
        super(details);
    }

    protected override void verifyCard() {
        System.debug('Verifying card ' + this.details.cardType);
        if (this.details.cardNumber.length() != 10) {
            throw new CreditCardException('Visa card must have a 10 digit number');
        }
    }

    protected override void processPayment() {
        System.debug('processing payment for ' + this.details.amount);
        //if something went wrong with the payment. It was rejected we can throw a credit card exception.
    }
}