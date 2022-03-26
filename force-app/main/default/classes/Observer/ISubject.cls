/**
 * Created by Brooks Johnson on 3/12/2022.
 */

public interface ISubject {

    void subscribe(Product_Notification__c observer);
    void unsubscribe(Product_Notification__c observer);
    void notifyObservers();

}