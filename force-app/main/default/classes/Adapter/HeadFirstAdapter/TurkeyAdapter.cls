/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class TurkeyAdapter implements IDuck{

    ITurkey turkey;

    public TurkeyAdapter(ITurkey turkey){
        this.turkey = turkey;
    }


    public void quack() {
        this.turkey.gobble();
    }

    public void fly() {
        Integer flightDistance = 5;
        while(flightDistance > 0 ){
            this.turkey.fly();
            flightDistance--;
        }
    }
}