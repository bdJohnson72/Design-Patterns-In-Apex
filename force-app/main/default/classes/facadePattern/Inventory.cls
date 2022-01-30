/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class Inventory {

	public Boolean updateInventory(String productId, Integer count){
		System.debug(count + 'Product with Id' + productId +  'has been subtracted from inventory');
		return true;
	}
}