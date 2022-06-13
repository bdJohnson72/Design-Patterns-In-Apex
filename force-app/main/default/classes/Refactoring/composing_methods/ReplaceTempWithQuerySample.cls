/**
 * Created by brooks.johnson on 5/6/2022.
 */

public with sharing class ReplaceTempWithQuerySample {

    /*private Integer quantity;
    private Integer itemPrice;

    //Method with temp variables
    public Decimal getPrice1(){
        Integer basePrice = this.quantity * this.itemPrice;
        Double discountFactor;
        basePrice > 1000 ? discountFactor = .95 : discountFactor = .98;
        return basePrice * discountFactor;
    }

    //refactored method using temp to query
    public Decimal getPrice(){
        return getBasePrice() * getDiscountFactor();
    }

    private Decimal getDiscountFactor() {
       return getBasePrice() > 100 ? .95 : .98;
    }

    private Integer getBasePrice() {
        return quantity * itemPrice;
    }*/

}