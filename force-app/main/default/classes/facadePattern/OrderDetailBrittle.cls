/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class OrderDetailBrittle {
	private String productId;
	private String productName;
	private Integer productCount;
	private Decimal price;
	private Decimal discount;
	private String cardNumber;
	private String address;

	public OrderDetailBrittle(String productId, String productName, Integer productCount, Decimal price,
			Decimal discount, String cardNumber, String address){
		this.productId = productId;
		this.productName = productName;
		this.productCount = productCount;
		this.price = price;
		this.discount = discount;
		this.cardNumber = cardNumber;
		this.address = address;
	}

	public void  placeOrder(){
		Inventory inventory = new Inventory();
		inventory.updateInventory(this.productId, this.productCount);
		AddressVerification addressVerification = new AddressVerification();
		addressVerification.verifiyAddress(this.address);
		ApplyDiscount applyDiscount = new ApplyDiscount();
		applyDiscount.applyDiscount(this.price, this.discount);
		PaymentVerification verification = new PaymentVerification();
		verification.verify(this.cardNumber);
		ShipToAddress shipTo = new ShipToAddress();
		shipTo.ship(this.address, this.productName);

	}
}