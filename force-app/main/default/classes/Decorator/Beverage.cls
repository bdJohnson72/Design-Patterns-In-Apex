/**
 * Created by brooks.johnson on 4/26/2022.
 */

public abstract class Beverage {

    public  String description = 'Beverage';

    public abstract Double cost();

    public virtual String getDescription(){
        return this.description;
    }

}