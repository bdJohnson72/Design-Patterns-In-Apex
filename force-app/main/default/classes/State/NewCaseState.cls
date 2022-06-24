/**
 * Created by brooks.johnson on 6/15/2022.
 */

public with sharing class NewCaseState implements ICaseState{


    public void close(Case customerCase) {
        System.debug('Closing a new clase');
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('No time calc available for a new case');
    }

    public void validate(Case customerCase) {
        System.debug('validating a new case');
    }
}