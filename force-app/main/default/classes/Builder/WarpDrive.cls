/**
 * Created by brooks.johnson on 7/20/2022.
 */

public with sharing class WarpDrive implements IEngines {

    Integer speed = 0;


    public void accelerate() {
        System.debug('traveling at warp ' + ++speed);
    }

    public void decelerate() {
        System.debug('traveling at warp ' + --speed);
    }

    public Integer getSpeed() {
        return speed;
    }
}