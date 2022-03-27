/**
 * Created by Brooks Johnson on 3/27/2022.
 */

public with sharing class ProductCatalogTriggerHandler extends TriggerHandler {

    protected override void beforeUpdate() {
        for (Product_Catalog__c catalog : (List<Product_Catalog__c>) Trigger.new) {
            Product_Catalog__c oldCatalog = (Product_Catalog__c) Trigger.oldMap.get(catalog.Id);
            if (catalog.Is_Available__c == true && oldCatalog.Is_Available__c == false) {
                ProductSubject subject = new ProductSubject(catalog.Id);
                subject.notifyObservers();
            }
        }
    }
}