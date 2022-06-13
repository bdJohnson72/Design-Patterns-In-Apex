/**
 * Created by brooks.johnson on 6/13/2022.
 */

/**
 * We use this when a method has conditional behavior that does not make clear the normal path of execution
 */
public with sharing class ReplaceConditionalWithGuardClause {
    private Boolean isDead;
    private Boolean isSeperated;
    private Boolean isRetired;

    /**
     * The normal behavior of the method to return the normal pay ammount is obscured in
     * the conditional logic.
     */
    public Double getPayAmount_Pre(){
        Double result;

        if (isDead) {
            result = deadAmount();
        } else if(isRetired){
            result = retiredAmount();
        }else if(isSeperated) {
            return seperatedAmount();
        }else {
            result = normalPayAmount();
        }
       return result;
    }

    /**
     * post refactor pattern of replace conditional with guard clauses
     * This is a question of emphasis. The guard clause tells the reader -these things are rare.
     * if they happen do something and get out.
     */
    public Double getPayAmount(){
        if (isDead) { return deadAmount();}
        if(isSeperated){return seperatedAmount();}
        if(isRetired){return retiredAmount();}
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