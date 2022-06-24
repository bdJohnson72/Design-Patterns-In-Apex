/**
 * Created by brooks.johnson on 6/15/2022.
 */

public with sharing class CloseCaseStatehandler implements ICaseState{


    public void close(Case customerCase) {
        System.debug('Error case is already closed');
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('Calculating time spent for closed case ');
    }

    public void validate(Case customerCase) {
        System.debug('Error closed case can not be validated');
    }
}