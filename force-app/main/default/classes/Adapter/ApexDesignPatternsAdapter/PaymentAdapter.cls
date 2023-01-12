/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class PaymentAdapter {

    VendorXMLPaymentApp paymentApp;

    public PaymentAdapter(){
        this.paymentApp = paymentApp;
    }

    public void submitPayment(String xmlReqenst){
        paymentApp.processPayment(xmlReqenst);
    }

}