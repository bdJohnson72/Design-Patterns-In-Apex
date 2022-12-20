/**
 * Created by brooks.johnson on 11/3/2022.
 */

public abstract class Customer2 {

    public String customerRating {get; private set; }
    public static final Integer PREMIER = 2;
    public static final Integer VALUED = 1;
    public static final Integer DEADBEAT = 0;

    public String getCustomerRating(){
        return customerRating;
    }

    public class Premier extends Customer2 {

    }

}