/**
 * Created by brooks.johnson on 7/20/2022.
 */

public interface IShipBuilder {

    void buildCrew();
    void buildEngines();
    void buildWeapons();
    void buildCaptain();
    SpaceShip getSpaceShip();

}