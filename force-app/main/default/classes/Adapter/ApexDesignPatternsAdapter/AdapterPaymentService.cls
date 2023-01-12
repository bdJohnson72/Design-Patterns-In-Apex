/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class AdapterPaymentService {

    IXMLPayment xmlPayment;

    public AdapterPaymentService(IXMLPayment xmlPayment) {
        this.xmlPayment = xmlPayment;
    }

    public void submit(Invoice invoice){
        this.xmlPayment.submitXMLPayment(invoice);
    }



}