/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class ApplyDiscount {

	public Boolean applyDiscount(Decimal actualPrice, Decimal discount){
		Decimal finalPrice = actualPrice - (discount/100*actualPrice);
		System.debug('Final prince, after ' + discount/100 + '% discount is appllied =' +
		finalPrice);
		return true;
	}

}