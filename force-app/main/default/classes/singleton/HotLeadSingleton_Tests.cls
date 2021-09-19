
@IsTest
private class HotLeadSingleton_Tests {

    @IsTest
    static void itShouldQueryLeadOnce() {
        Lead lead = new Lead(Is_Hot__c = true, FirstName = 'Test', Company = 'Acme Co',
                LastName = 'lead', Email = 'test@test.comes');
        insert lead;

        Test.startTest();
        HotLeadSingleton instance = HotLeadSingleton.getInstance();
        System.assert(instance.hotleads.size() == 1);
        //Now lets see if one query had been run
        System.assert(Limits.getQueries() == 1, 'There should have been one query');
        //Lets call it again
        HotLeadSingleton instanceTwo = HotLeadSingleton.getInstance();
        //It should have returned the same instance of the HotLeadSingleton object with out running another SOQL
        //Query
        System.assert(Limits.getQueries() == 1, 'It  should remain one');
        Test.stopTest();
    }
}