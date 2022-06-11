/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class PaymentController1 {

    public static void submitPayment(String emailAddress, String cardType, String cardNumber, String cardExpiration, String securityCode, Decimal amount) {

        //verify card
        if (cardType == 'Visa') {
            if (cardNumber.length() != 10) {
                System.debug('failed visa validation');
            } else if (cardType == 'MasterCard') {
                if (cardNumber.length() != 11) {
                    System.debug('failed master card validation');
                }
            } else if (cardType == 'Discover') {
                if (cardNumber.length() != 12) {
                    System.debug('failed discover card validation');
                }
            }
        }
        //process the payment
        if (cardType == 'Visa') {
            System.debug('call the visa payment system');
            HttpRequest request = new HttpRequest();
            request.setEndpoint('www.fakevisa.com');
            Http http = new Http();
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                // Insert new successful record
            }
        } else if (cardType == 'MasterCard') {
            System.debug('call the visa payment system');
            HttpRequest request = new HttpRequest();
            request.setEndpoint('www.fakeMC.com');
            Http http = new Http();
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                // Insert new successful record
            }

        } else if (cardType == 'Discover') {
            System.debug('call the visa payment system');
            HttpRequest request = new HttpRequest();
            request.setEndpoint('www.fakeDiscover.com');
            Http http = new Http();
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                // Insert new successful record
            }
        }
    }

}

