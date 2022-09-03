/**
 * Created by Brooks Johnson on 9/3/2022.
 */

public with sharing class NutritionFacts_Builder {
    public class NutritionFactsException extends Exception {
    }
    private Integer servingSize;
    private Integer servings;
    private Integer calories;
    private Integer fat;
    private Integer sodium;
    private Integer carbohydrate;
    private Date startDate;
    private Date endDate;

    private NutritionFacts_Builder(NutritionFacts_Builder.Builder builder) {
        this.servingSize = builder.servingSize;
        this.servings = builder.servings;
        this.calories = builder.calories;
        this.fat = builder.fat;
        this.sodium = builder.sodium;
        this.carbohydrate = builder.carbohydrate;
        this.startDate = builder.startDate;
    }


    public class Builder {

        private Integer servingSize;
        private Integer servings;
        private Integer calories;
        private Integer fat;
        private Integer sodium;
        private Integer carbohydrate;
        private Date startDate;
        private Date endDate;

        public NutritionFacts_Builder.Builder servingSize(Integer servingSize) {
            this.servingSize = servingSize;
            return this;
        }

        public NutritionFacts_Builder.Builder servings(Integer servingSize) {
            this.servingSize = servingSize;
            return this;
        }

        Public NutritionFacts_Builder.Builder calories(Integer calories) {
            this.calories = calories;
            return this;
        }

        public NutritionFacts_Builder.Builder fat(Integer fat) {
            this.fat = fat;
            return this;
        }

        public NutritionFacts_Builder.Builder sodium(Integer sodium) {
            this.sodium = sodium;
            return this;
        }

        public NutritionFacts_Builder.Builder carbohydrates(Integer carbohydrate) {
            this.carbohydrate = carbohydrate;
            return this;
        }

        public NutritionFacts_Builder.Builder startDate(Date startDate) {
            this.startDate = startDate;
            return this;
        }

        private void validateDate() {
            if (startDate != null && endDate == null) {
                throw new NutritionFactsException('Must have an end date if a start date is present');
            }
        }


        public NutritionFacts_Builder build() {
            validateDate();
            return new NutritionFacts_Builder(this);
        }

    }

}