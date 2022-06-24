/**
 * Created by brooks.johnson on 6/15/2022.
 * @description This is version of the code prior to the implementation
 * of the state pattern
 *
 * The key is that the behavior of our program is dependent on the state of the Case
 */

public with sharing class CaseHelper {

    public void closeCase(Case customerCase){
        if (customerCase.Status == 'New') {
            //throw error
        } else if (customerCase.Status == 'Open'){
            //validate agent entered closed reason
        }else if (customerCase.Status == 'In Process'){
            //validate email sent to customer
        }else if (customerCase.Status == 'Closed'){
            //throw error  case is already closed
        }else {
            //send email to case owner owner
        }
    }
}