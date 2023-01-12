/**
 * Created by brooks.johnson on 1/10/2023.
 */

public with sharing class DuckService {

    private IDuck duck;

    public DuckService(IDuck duck) {
        this.duck = duck;
    }

    public void quack(){
        this.duck.quack();
    }

    public void fly(){
        this.duck.fly();
    }

}