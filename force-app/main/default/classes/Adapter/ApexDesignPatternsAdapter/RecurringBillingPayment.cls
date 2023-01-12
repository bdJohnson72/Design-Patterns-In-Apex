/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class RecurringBillingPayment implements IXMLPayment {

    PaymentAdapter adapter;

    public RecurringBillingPayment(PaymentAdapter adapter){
        this.adapter = adapter;
    }
    public void submitXMLPayment(Invoice invoice){
        //code to generate XML
        String xmlData;
        adapter.submitPayment(xmlData);
    }

}