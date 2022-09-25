/**
 * Created by brooks.johnson on 9/23/2022.
 */

public with sharing class UserDirector {
    IUserBuilder userBuilder;

    public UserDirector(IUserBuilder userBuilder){
        this.userBuilder = userBuilder;
    }

    public User build() {
        userBuilder.setFirstName();
        userBuilder.setLastName();
        userBuilder.setUsername();
        userBuilder.setEmail();
        userBuilder.setAlias();
        userBuilder.setEmailEncodingKey();
        userBuilder.setLocalSIDKey();
        userBuilder.setLanguageKey();
        userBuilder.setProfile();
        userBuilder.setTimeZone();
        userBuilder.setPermSets();
        return this.userBuilder.getUser();
    }


}