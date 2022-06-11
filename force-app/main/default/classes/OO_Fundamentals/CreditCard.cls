/**
 * Created by Brooks Johnson on 4/30/2022.
 */

//Abstract Credit Card
//Provides all the details that each subclass needs
//leave  implementation of verify card and process payment to child classes
//We can also achieve polymorphism with interfaces and virtual classes
public with sharing abstract class CreditCard {
    //Used to throw exceptions if a process fails
    public class CreditCardException extends Exception {
    }

    //protected gives access to all subclasses
    //We use composition to model as 'has a' relationship
    protected PaymentController2.PaymentDetails details;

    public CreditCard(PaymentController2.PaymentDetails details) {
        this.details = details;
    }

    //Class that extends CreditCard must implement these
    protected abstract void verifyCard();
    protected abstract void processPayment();

    //leaving it a empty virual method can allow it to be optional
    protected virtual void validateAddress() {
    }

    //Example of a template pattern. Leave methods that concrete credit cards must implement.
    public void submitPayment() {
        verifyCard();
        validateAddress();
        processPayment();
    }
}