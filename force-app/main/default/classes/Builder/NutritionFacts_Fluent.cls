/**
 * Created by Brooks Johnson on 9/3/2022.
 * @description example of the useing a fluent api to build our nutrion facts class.
 * The fluent API is a sort of facade over the class creation
 */

public with sharing class NutritionFacts_Fluent {
    private Integer servingSize;
    private Integer servings;
    private Integer calories;
    private Integer fat;
    private Integer sodium;
    private Integer carbohydrate;

    public NutritionFacts_Fluent servingSize(Integer servingSize) {
        this.servingSize = servingSize;
        return this;
    }

    public NutritionFacts_Fluent servings(Integer servings) {
        this.servings = servings;
        return this;
    }

    public NutritionFacts_Fluent calories(Integer calories) {
        this.calories = calories;
        return this;
    }

    public NutritionFacts_Fluent fat(Integer fat) {
        this.fat = fat;
        return this;
    }

    public NutritionFacts_Fluent sodium(Integer sodium) {
        this.sodium = sodium;
        return this;
    }

    public NutritionFacts_Fluent carbohydrate(Integer carbohydrate) {
        this.carbohydrate = carbohydrate;
        return this;
    }

}