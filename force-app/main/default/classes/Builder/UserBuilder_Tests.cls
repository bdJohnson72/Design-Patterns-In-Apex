/**
 * Created by Brooks Johnson on 9/25/2022.
 */

@IsTest
private class UserBuilder_Tests {
    @IsTest
    static void itShouldUpdate() {
        User user = new UserDirector().build(new UserBuilder.Admin());
        System.runAs(user) {
            Account account = new Account(Name = 'Test Account', Admin_Only__c = true);
            System.assert(Schema.SObjectType.Account.fields.Admin_Only__c.isAccessible() == true,
                    'This field should be accessible');
        }
    }

    @IsTest
    static void itShouldNotUpdate() {
        User user = new UserDirector().build(new UserBuilder.Standard());
        System.runAs(user) {
            Account account = new Account(Name = 'Test Account', Admin_Only__c = true);
            System.assert(Schema.SObjectType.Account.fields.Admin_Only__c.isAccessible() == false,
                    'This field should be accessible');
        }
    }

}