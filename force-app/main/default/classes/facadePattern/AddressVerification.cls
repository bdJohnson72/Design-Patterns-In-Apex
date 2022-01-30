/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class AddressVerification {

	public Boolean verifiyAddress(String zipcode){
		System.debug('Product can be shipped to ' + zipcode);
		return true;
	}

}