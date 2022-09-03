/**
 * Created by brooks.johnson on 7/19/2022.
 * Example taken from Effective Java. This clas will quickly get out of hand.
 * It works but is very hard to read. Very easy for the client to make is mistake with long s
 *  sequence of parameters. Mix servings with calories
 */

public with sharing class NutritionalFacts {

    private Integer servingSize;
    private Integer servings;
    private Integer calories;
    private Integer fat;
    private Integer sodium;
    private Integer carbohydrate;

    public NutritionalFacts(Integer servingSize, Integer servings) {
        this(servingSize, servings, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories) {
        this(servingSize, servings, calories, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat) {
       this(servingSize, servings, calories, fat, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium){
        this(servingSize, servings, calories, fat, sodium, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium, Integer carbohydrate) {
        this.servingSize = servingSize;
        this.servings = servings;
        this.calories = calories;
        this.fat = fat;
        this.sodium = sodium;
        this.carbohydrate = carbohydrate;
    }
    /*
    consider the use of static constructor methods instead. You can have as many as you want per class and
    The name of the the method will reveal your intent.
    */
    public static NutritionalFacts taco() {
        return new NutritionalFacts(4, 1, 300, 10, 20);
    }

    public static NutritionalFacts cheeseBurger() {
        return new NutritionalFacts(16, 1, 600, 20, 10, 20);
    }
}