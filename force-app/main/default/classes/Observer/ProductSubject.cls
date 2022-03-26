/**
 * The publisher in the pub sub relationship
 */
public with sharing class ProductSubject implements ISubject {

    String id;

    public ProductSubject(String id) {
        this.id = id;
    }

    public void subscribe(Product_Notification__c observer) {
        observer.Product_Catelog__c = this.id;
        observer.Subscribe__c = true;

        insert observer;
    }

    public void unsubscribe(Product_Notification__c observer) {
        System.debug('Doing unsubscribe');
    }

    public void notifyObservers() {
        IObserver observer = new ProductObserver(this.id);
        observer.notify();
    }
}