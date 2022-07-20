/**
 * Created by brooks.johnson on 7/19/2022.
 * Use a builder with a fluent interface api to create our object
 */

public with sharing class NutritionalBuilder {

    private Integer servingSize;
    private Integer servings;
    private Integer calories = 0;
    private Integer fat = 0;
    private  Integer sodium = 0;
    private  Integer carbohydrate = 0;

   //mandatory params
    public NutritionalBuilder(Integer servingSize, Integer servings){
        this.servingSize = servingSize;
        this.servingSize = servings;
    }

    public NutritionalBuilder calories(Integer calories){
        this.calories = calories;
        return this;
    }

    public NutritionalBuilder fat(Integer fat){
        this.fat = fat;
        return this;
    }

    public NutritionalBuilder sodium(Integer sodium){
        this.sodium = sodium;
        return this;
    }

    public NutritionalBuilder carbohydrates(Integer carbohydrates){
        this.carbohydrate = carbohydrates;
        return this;
    }


}