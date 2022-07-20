/**
 * Created by brooks.johnson on 7/19/2022.
 */

public interface IStarShipPlan {
    void setCrewSize(Integer crewSize);
    void setEngines(IEngines engines);
    void setWeapons(IWeapons weapons);
    void setCaptain(String captain);

}