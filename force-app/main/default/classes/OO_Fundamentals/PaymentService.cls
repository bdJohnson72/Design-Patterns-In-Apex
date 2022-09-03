/**
 * Created by Brooks Johnson on 4/30/2022.
 */

//The Payment Service class is using composition, DI  and polymorphism to get the correct CreditCard object at run time.
//The details of how each credit card implements its verification and payment method belong to the concrete credit cards
public with sharing class PaymentService {
    //Objects built of objects = composition
    //Because we uses an abstract type CreditCard we can assign any object to it that extends that type
    //We can add more cards classes as needed

    //Use of composition a payment service has a credit card...
    //This is different than inheritance. A visa  card is a credit card
    CreditCard card;

    public PaymentService(PaymentController2.PaymentDetails paymentDetails) {
        //We use a simple factory method to inject the concrete credit card object at run time
        //Each card can implement its own algorithms - simple implementation of the Strategy Pattern
        this.card = CardFactory.getInstance(paymentDetails);
    }

    //delegate verify card and process order to the Credit card class
    public void processOrder() {
        this.card.submitPayment();
    }
}