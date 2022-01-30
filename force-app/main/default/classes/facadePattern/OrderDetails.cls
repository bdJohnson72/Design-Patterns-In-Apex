/**
 * Created by bjohnson on 1/11/2022.
 */

public with sharing class OrderDetails {

	public String productId;
	public String productName;
	public Integer productCount;
	public Decimal price;
	public Decimal discount;
	public String cardNumber;
	public String address;

	public OrderDetails(String productId, String productName, Integer productCount, Decimal price,
			Decimal discount, String cardNumber, String address){
		this.productId = productId;
		this.productName = productName;
		this.productCount = productCount;
		this.price = price;
		this.discount = discount;
		this.cardNumber = cardNumber;
		this.address = address;
	}

}