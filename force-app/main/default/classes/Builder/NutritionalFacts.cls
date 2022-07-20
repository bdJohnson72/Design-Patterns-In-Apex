/**
 * Created by brooks.johnson on 7/19/2022.
 * Example taken from Effective Java. This clas will quickly get out of hand.
 * It works but is very hard to read. Very easy for the client to make is mistake with long s
 *  sequence of parameters. Mix servings with calories
 */

public with sharing class NutritionalFacts {

    private final Integer servingSize;
    private final Integer servings;
    private final Integer calories;
    private final Integer fat;
    private final Integer sodium;
    private final Integer carbohydrate;

    public NutritionalFacts(Integer servingSize, Integer servings){
        this(servingSize, servings, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories){
        this(servingSize,servings, calories, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat){
       this(servingSize, servings, calories, fat, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium){
        this(servingSize, servings, calories, fat, sodium, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium, Integer carbohydrate){
        this.servingSize = servingSize;
        this.servings = servings;
        this.calories = calories;
        this.fat = fat;
        this.sodium = sodium;
        this.carbohydrate = carbohydrate;
    }






}