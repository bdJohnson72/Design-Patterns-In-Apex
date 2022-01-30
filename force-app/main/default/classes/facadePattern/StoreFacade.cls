/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class StoreFacade {
	OrderDetails orderDetails;
	public StoreFacade(OrderDetails orderDetails){
		this.orderDetails = orderDetails;
	}

	public Boolean placeOrder(){
		Inventory inventory = new Inventory();
		inventory.updateInventory(this.orderDetails.productId, this.orderDetails.productCount);
		AddressVerification addressVerification = new AddressVerification();
		addressVerification.verifiyAddress(this.orderDetails.address);
		ApplyDiscount applyDiscount = new ApplyDiscount();
		applyDiscount.applyDiscount(this.orderDetails.price, this.orderDetails.discount);
		PaymentVerification verification = new PaymentVerification();
		verification.verify(this.orderDetails.cardNumber);
		ShipToAddress shipTo = new ShipToAddress();
		shipTo.ship(this.orderDetails.address, this.orderDetails.productName);
		return null;
	}

}