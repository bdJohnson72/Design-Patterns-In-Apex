/**
 * Created by brooks.johnson on 6/13/2022.
 */

/**
 * We use this when a method has conditional behavior that does not make clear the normal path of execution
 */
public with sharing class ReplaceConditionalWithGuardClause {
    Boolean isDead;
    Boolean isSeperated;
    Boolean isRetired;

    /**
     * The normal behavior of the method to return the normal pay amount is obscured in
     * the conditional logic.
     * @return calculate pay amount
     */
    public Double getPayAmount() {
        if (isDead) {
            return deadAmount();
        }
        if (isRetired) {
            return retiredAmount();
        }
        if (isSeperated) {
            return seperatedAmount();
        }
        return normalPayAmount();
    }


    private Double normalPayAmount() {
        return null;
    }

    private Double deadAmount(){
        return null;
    }

    private Double seperatedAmount(){
        return null;
    }

    private Double retiredAmount(){
        return null;
    }

}