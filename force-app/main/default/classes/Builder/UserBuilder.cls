/**
 * Created by Brooks Johnson on 9/25/2022.
 */

public with sharing class UserBuilder {
    public with sharing class Admin implements IUserBuilder {
        public User user { get; private set; }

        public Admin() {
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
            Profile profile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
            user.ProfileId = profile.Id;
        }

        public void setEmailEncodingKey() {
            user.EmailEncodingKey = 'UTF-8';
        }

        public void setAlias() {
            user.Alias = 'Admin';
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

    public with sharing class Standard implements IUserBuilder {
        public User user { get; private set; }

        public Standard() {
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

}