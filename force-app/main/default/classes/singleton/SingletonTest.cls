
@IsTest
private class SingletonTest {
    @TestSetup
    static void setup() {
        Contact contact = new Contact(FirstName = 'Test', LastName = 'Contact');
        insert contact;
        User user = new User(ContactId = contact.Id);
        insert user;
    }
    @IsTest
    static void itShouldQueryOnce(){}
}