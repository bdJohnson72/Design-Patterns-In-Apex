/**
 * Created by Brooks Johnson - Insulet on 2/12/23.
 */

@IsTest
private class AccountHandler_Tests {
    @TestSetup
    static void setup() {
        Account account = new Account(Name = 'Demo Account', BillingPostalCode = '12345678',
                BillingCity = 'Millis', BillingState = 'MA', BillingCountry='US', BillingStreet = null);

        insert account;

        Contact conToUpdate = new Contact(FirstName = 'test', LastName = 'Contact',
                AccountId = account.Id,
                MailingStreet = 'anywhere', MailingCity = 'anywhere', MailingState = 'anywhere',
                MailingCountry = 'anywhere');
        insert conToUpdate;
    }
    @IsTest
    static void testBehavior() {
        //first we have to hit the DB again to get that contact Id;
        List<Account> accounts = [SELECT Id, BillingStreet, BillingCountry, BillingPostalCode,
                BillingCity, BillingState FROM Account LIMIT 1];
        Map<Id, Account> changedAccountsById = new Map<Id, Account>(accounts);
        //when
        AccountHandler.updateAddresses(changedAccountsById);
        //then now we hit the DB again!! and we did DML in our test. So 2 test inserts
        // 2 querys in the test plus the query that the prod code is calling and its DML.
        //3 dmls and 3 queries for a simple method test
        //then
        Contact updatedContact = [SELECT Id, MailingStreet, MailingCity, MailingState FROM Contact LIMIT 1];
        Assert.isTrue(updatedContact.MailingStreet == accounts[0].BillingStreet);
    }
}