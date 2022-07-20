/**
 * Created by brooks.johnson on 7/20/2022.
 */

public with sharing class SpaceShipDirector {

    public SpaceShip buildSpaceShip(IShipBuilder builder) {
        builder.buildCaptain();
        builder.buildCrew();
        builder.buildEngines();
        builder.buildWeapons();
        return builder.getSpaceShip();
    }

}

