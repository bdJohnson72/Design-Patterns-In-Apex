/**
 * Created by Brooks Johnson on 3/12/2022.
 */

public with sharing class ObserverPatternController {
  public static final String PRODUCT_QUERY =
          'SELECT Id, Name, Is_Available__c, Product_Name__c ' +
                  'FROM Product_Catalog__c ' +
                  'WITH SECURITY_ENFORCED LIMIT 1';

  @AuraEnabled(Cacheable=true)
  public static List<Product_Catalog__c> getProducts() {
    ISelector selector = SelectorFactory.getSelector();
    return (List<Product_Catalog__c>) selector.query(PRODUCT_QUERY);
  }

  @AuraEnabled
  public static void subscribeUser(String productId, String email) {
    Product_Notification__c notification = new Product_Notification__c(Email_Address__c = email);
    ISubject productSubject = new ProductSubject(productId);
    productSubject.subscribe(notification);
  }
}
