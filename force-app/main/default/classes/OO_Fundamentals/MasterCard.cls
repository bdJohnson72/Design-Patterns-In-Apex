/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class MasterCard extends CreditCard {

    public MasterCard(PaymentController2.PaymentDetails details) {
        super(details);
    }

    protected override void validateAddress() {
        System.debug('The mastercard is validating the address of the user  ');
    }


    protected override void verifyCard() {
        System.debug('Verifying card ' + this.details.cardType);
        if (this.details.cardNumber.length() != 11) {
            throw new CreditCardException('Master Card must have a 11 digit number');
        }
    }

    protected override void processPayment() {
        System.debug('processing master card payment for ' + this.details.amount);
    }
}