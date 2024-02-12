# Medical Insurance Analysis Power BI Project

## Overview

Explore the nuances of health insurance data with this Power BI project, utilizing a dataset containing 1338 rows and 7 columns. The dataset, sourced from [Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance), provides valuable insights into various factors influencing medical insurance, including age, BMI, charges, and more.

## Data Transformations

### Change "Charges" Column Data Type
Change the data type from decimal to whole number.

### Add "Decade" Column
Introduce a new column "Decade" calculating age divided by 10, changing the data type from decimal to a whole number.
```
Decade = insurance[age] / 10
```

### Add "BMI Category" Column
Categorize BMI into groups like Underweight, Normal, Overweight, Obese, and Extremely obese.
```
insurance[BMI category] =
    IF(insurance[bmi] < 18.5, "Underweight",
    IF(insurance[bmi] >= 18.5 && insurance[bmi] < 25 , "Normal",
    IF(insurance[bmi] >= 25 && insurance[bmi] < 30 , "Overweight",
    IF(insurance[bmi] >= 30 && insurance[bmi] < 35 , "Obese",
    IF(insurance[bmi] >= 35, "Extremely obese")))))
```

## Visualizations

- ### **Gauges**
  - Average Age
  - Average BMI
  - Average Charges

- ### **Text Field:** 
    Charges: Individual medical costs billed by health insurance.

- ### **Cards:**
  - **Sum of Charges:** Provides an overview of the total charges.
  - **Count of Individuals:** Counts the number of individuals in the dataset.

- ### **Stacked Column Charts:**
  - **Decades:** Visualizes the count of individuals in different decades.
  - **BMI Categories:** Illustrates the count of individuals in different BMI categories.
  - **Count of Children:** Displays the count of individuals based on the number of children.
  - **Regions:** Analyzes the count of individuals across different regions.

- ### **Donut Charts:**
  - **Smokers:** Showcases the percentage of smokers.
  - **Gender:** Highlights the percentage of individuals based on gender.

## Conclusion

Uncover valuable insights into demographics, health metrics, and insurance charges within the dataset, providing a comprehensive view of the factors influencing medical costs.
