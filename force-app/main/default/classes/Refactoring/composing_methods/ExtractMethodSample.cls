/**
 * Created by brooks.johnson on 5/6/2022.
 */

public with sharing class ExtractMethodSample {
    private List<Integer> integers;
    private String name;

    private Integer numberOfLateDeliveries;


    public extractMethodSample(List<Integer> integers, String name) {
        this.integers = integers;
        this.name = name;
    }
    public void printOwing(){
        Decimal outstanding = getOutstanding();
        printBanner();
        printDetails(outstanding);

    }

    private Decimal getOutstanding() {
        Decimal result = 0.0;
        for(Integer i : integers){
            result += i;
        }
        return result;
    }

    private void printDetails(Decimal outstanding) {
        System.debug('Name: ' + name);
        System.debug('amount: ' + outstanding);
    }

    private void printBanner() {
        System.debug('***********************************************');
        System.debug('******************* Customer Owes *************');
        System.debug('************************************************');
    }

    //inline a method
    public Integer getrating(){
        return numberOfLateDeliveries > 5 ? 2 : 1;
    }
    //inlined above
    public boolean  moreThan5LateDeliveries(){
        return numberOfLateDeliveries > 5;
    }

}