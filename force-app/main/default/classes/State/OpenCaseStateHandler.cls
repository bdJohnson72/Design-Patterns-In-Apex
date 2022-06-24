/**
 * Created by brooks.johnson on 6/15/2022.
 */

public with sharing class OpenCaseStateHandler implements ICaseState {


    public void close(Case customerCase) {
        System.debug('close open case');
    }

    public void calculateTimeSpent(Case customerCase) {
        System.debug('calculating time spent on case from date time it was set to new ');
    }

    public void validate(Case customerCase) {
        System.debug('Validate open case');
    }
}