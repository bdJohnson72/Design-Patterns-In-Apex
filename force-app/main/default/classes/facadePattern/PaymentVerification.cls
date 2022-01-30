/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class PaymentVerification {

	public Boolean verify(String cardNumber){
		System.debug('card with number ' + cardNumber + 'is vefified');
		return true;
	}
}