
//1. Remove the long parameter list and place it in its own object
//2. Move the logic into the class where it belongs. A credit card -avoids primitive obsession. Use object to express concepts
//3. The service class will use Composition and polymorphism to determine the correct algorithm at run time
public with sharing class PaymentController2 {

    //change to receive a JSON string
    //Keep our controller as thing and logic-less and possible
    //TODO bulkify and overload these methods
    //Presentation layer
    public static void submitPayment(String paymentDetails) {
        try {
            submitPayment((PaymentDetails) JSON.deserialize(paymentDetails, PaymentDetails.class));
        } catch (Exception e) {
            throw new AuraHandledException('There was a problem processing the order');
        }
    }

    public static void submitPayment(PaymentDetails paymentDetails) {
        //Over load this method and forward the payment processing to the service layer
        PaymentService paymentService = new PaymentService(paymentDetails);
        paymentService.processOrder();
    }

    /**
     * A wrapper class for our PaymentDetails this does not have to be an inner class.
     */
    public class PaymentDetails {
        public String emailAddress { get; private set; }
        public String cardType { get; private set; }
        public String cardNumber { get; private set; }
        public String cardExpiration { get; private set; }
        public String securityCode { get; private set; }
        public Decimal amount { get; private set; }


        public PaymentDetails(String emailAddress, String cardType, String cardNumber, String cardExpiration,
                String securityCode, Decimal amount) {
            this.emailAddress = emailAddress;
            this.cardNumber = cardNumber;
            this.cardType = cardType;
            this.cardExpiration = cardExpiration;
            this.securityCode = securityCode;
            this.amount = amount;
        }
    }

}