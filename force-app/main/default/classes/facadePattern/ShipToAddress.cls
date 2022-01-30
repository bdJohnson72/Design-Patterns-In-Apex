/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class ShipToAddress {

	public Boolean ship(String address, String productName){
		System.debug(productName + 'is shipped to ' + address);
		return true;
	}

}