/**
 * Created by Brooks Johnson on 3/27/2022.
 */

trigger ProductCatalog on Product_Catalog__c (before insert, before update, before delete,
        after insert, after update, after delete, after undelete) {

    ProductCatalogTriggerHandler handler = new ProductCatalogTriggerHandler();
    handler.run();

}