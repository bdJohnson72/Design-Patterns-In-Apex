/**
 * Created by brooks.johnson on 7/20/2022.
 */

public with sharing class EnterpriseBuilder implements IShipBuilder{

    SpaceShip spaceship;

    public EnterpriseBuilder(){
        this.spaceship = new Spaceship();
    }

    public void buildCrew() {
        spaceship.setCrewSize(5000);
    }

    public void buildEngines() {
        spaceship.setEngines(new WarpDrive());
    }

    public void buildWeapons() {
        spaceship.setWeapons(new Phasers());
    }

    public void buildCaptain() {
        spaceship.setCaptain('James T. Kirk');
    }
    public SpaceShip getSpaceShip(){
        return  this.spaceship;
    }
}