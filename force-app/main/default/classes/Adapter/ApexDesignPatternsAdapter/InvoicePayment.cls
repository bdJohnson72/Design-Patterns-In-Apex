/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class InvoicePayment implements IXMLPayment {
    PaymentAdapter adapter;

    public InvoicePayment(PaymentAdapter adapter){
        this.adapter = adapter;
    }
    public void submitXMLPayment(Invoice invoice){
        //code for XML data
        String xmlRequest;
        adapter.submitPayment(xmlRequest);
    }

}