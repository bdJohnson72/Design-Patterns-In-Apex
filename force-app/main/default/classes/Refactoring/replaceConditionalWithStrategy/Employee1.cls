/**
 * Created by brooks.johnson on 12/20/2022.
 */

public with sharing class Employee1 {

    private Boolean bonus = false;
    private Double salary = 0.0;
    private Double bonusAmount = 0.15;

    public Employee1(Double salary, Boolean bonus, Double bonusAmount) {
        this.salary = salary;
        this.bonus = bonus;
        this.bonusAmount = bonusAmount;
    }

        public Employee1(Double salary, Boolean bonus){
        this.salary = salary;
        this.bonus = bonus;
    }

    public Employee1(){}

    public Double getSalary() {
        return  salary + (salary * bonusAmount);
    }

}