/**
 * Created by Brooks Johnson on 3/26/2022.
 */

public with sharing class ProductObserver implements IObserver {
    String id;

    public ProductObserver(String id) {
        this.id = id;
    }

    public void notify() {
        List<Product_Notification__c> observers = [
                SELECT Id, Email_Address__c
                FROM Product_Notification__c
                WHERE Product_Catelog__c = :this.id
                AND Subscribe__c = TRUE
                WITH SECURITY_ENFORCED
        ];

        //mock email
        for (Product_Notification__c observer : observers) {
            System.debug('sending email to' + observer.Email_Address__c);
        }
    }

}