/**
 * Created by brooks.johnson on 11/3/2022.
 */

public abstract class Athlete {

    protected String name;

    public Athlete(String name) {
        this.name = name;
    }

    public class GoldWinner extends Athlete {
        private Athlete.GoldWinner goldWinner;

        private GoldWinner(String name) {
            super(name);
        }


    }
}