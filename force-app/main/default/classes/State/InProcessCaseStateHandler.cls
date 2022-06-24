/**
 * Created by brooks.johnson on 6/15/2022.
 */

public with sharing class InProcessCaseStateHandler implements ICaseState{


    public void close(Case customerCase) {
        System.debug(' close in process case');
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('Calculating time spent in process case from time it was sent to open');
    }

    public void validate(Case customerCase) {
        System.debug('Validation in process case');
    }
}