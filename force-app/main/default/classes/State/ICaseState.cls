/**
 * Created by brooks.johnson on 6/15/2022.
 */

public interface ICaseState {

    void close(Case customerCase);
    void calculateTimeSpent(Case customerCase);
    void validate(Case customerCase);

}