/**
 * Created by brooks.johnson on 9/23/2022.
 */

public interface IUserBuilder {

   void setFirstName();
    void setLastName();
    void setEmail();
    void setUsername();
    void setProfile();
    void setEmailEncodingKey();
    void setAlias();
    void setLanguageKey();
    void setLocalSIDKey();
    void setTimeZone();
    void setPermSets();
    User getUser();

}