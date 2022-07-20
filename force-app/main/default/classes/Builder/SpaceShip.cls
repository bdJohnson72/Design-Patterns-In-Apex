/**
 * Created by brooks.johnson on 7/19/2022.
 */

public class SpaceShip implements IStarShipPlan{
    public  IEngines engines;
    public IWeapons weapons;
    public  Integer crewSize;
    public  String Captain;


    public void setCrewSize(Integer crewSize) {
        this.crewSize = crewSize;
    }

    public void setEngines(IEngines engines) {
        this.engines = engines;
    }

    public void setWeapons(IWeapons weapons) {
        this.weapons = weapons;
    }

    public void setCaptain(String captain) {
        this.Captain = captain;
    }

    public void fireWeapons(){
        this.weapons.fireWeapon();
    }

    public void accelerate(){
        this.engines.accelerate();
    }

    public void decelerate(){
        this.engines.decelerate();
    }
}