/**
 * Created by brooks.johnson on 9/23/2022.
 */

public with sharing class AdminUserBuilder implements IUserBuilder {
    public User user {get; private set; }

    public AdminUserBuilder() {
        this.user = new User();
    }


    public void setFirstName() {
        user.FirstName = 'Test';
    }

    public void setLastName() {
        user.LastName = 'Admin';
    }

    public void setEmail() {
        user.Email = 'fake@fake.com';
    }

    public void setUsername() {
        user.Username = 'testAdminUser@' + String.valueOf(Crypto.getRandomInteger()) + '.com';
    }

    public void setProfile() {
        user.Profile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
    }

    public void setEmailEncodingKey() {
        user.EmailEncodingKey = 'UTF-8';
    }

    public void setAlias() {
        user.Alias = 'standAdim';
    }

    public void setLanguageKey() {
        user.LanguageLocaleKey = 'en-US';
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