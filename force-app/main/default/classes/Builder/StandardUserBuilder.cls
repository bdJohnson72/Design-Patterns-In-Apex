/**
 * Created by Brooks Johnson on 9/25/2022.
 */

public with sharing class StandardUserBuilder implements IUserBuilder {
    public User user { get; private set; }

    public StandardUserBuilder() {
        this.user = new User();
    }


    public void setFirstName() {
        user.FirstName = 'Test';
    }

    public void setLastName() {
        user.LastName = 'Standard User';
    }

    public void setEmail() {
        user.Email = 'fake@fake.com';
    }

    public void setUsername() {
        user.Username = 'testStandardUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
    }

    public void setProfile() {
        Profile profile = [SELECT Id, Name FROM Profile WHERE Name = 'Standard User'];
        user.ProfileId = profile.Id;
    }

    public void setEmailEncodingKey() {
        user.EmailEncodingKey = 'UTF-8';
    }

    public void setAlias() {
        user.Alias = 'standard';
    }

    public void setLanguageKey() {
        user.LanguageLocaleKey = 'en_US';
    }

    public void setLocalSIDKey() {
        user.LocaleSidKey = 'en_US';
    }

    public void setTimeZone() {
        user.TimeZoneSidKey = 'America/Los_Angeles';
    }

    public void setPermSets() {

    }


    public User getUser() {
        return user;
    }
}