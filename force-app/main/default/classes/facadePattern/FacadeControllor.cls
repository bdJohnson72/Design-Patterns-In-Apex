/**
 * Created by bjohnson on 1/26/2022.
 */

public with sharing class FacadeControllor {

	@AuraEnabled
	public static void  updateInventory(String productId, Integer count){
		Inventory inventory = new Inventory();
		inventory.updateInventory(productId, count);

	}

	@AuraEnabled
	public static Boolean processOrder(String details){
		System.debug('details' + details);
		OrderDetails order = (OrderDetails)JSON.deserializeStrict(details, OrderDetails.class);
		System.debug(LoggingLevel.INFO, 'Order Details: ' + details);
		return true;
	}

}