/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class Discover extends CreditCard {

    public Discover(PaymentController2.PaymentDetails details) {
        super(details);
    }


    protected override void verifyCard() {
        System.debug('Verifying card ' + this.details.cardType);
        if (this.details.cardNumber.length() != 12) {
            throw new CreditCardException('Discover card must have a 10 digit number');
        }
    }

    protected override void processPayment() {
        System.debug('processing payment for Discover ' + this.details.amount);
    }
}