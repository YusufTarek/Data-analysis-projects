### Medical Insurance Analysis - Power BI Project

#### Dataset
Explore the nuances of health insurance data with this Power BI project, utilizing a dataset containing 1338 rows and 7 columns. The dataset, sourced from [Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance), provides valuable insights into various factors influencing medical insurance, including age, BMI, charges, and more.

#### Data Transformations
- **Charges Column:** Change the data type from decimal to whole number.
- **Decade Column:** Introduce a new column "Decade" calculating age/10, changing the data type from decimal to a whole number.
- **BMI Category Column:** Categorize BMI into groups like Underweight, Normal, Overweight, Obese, and Extremely obese.

#### Visualizations
- **Gauge: Average Age**
  - Value: Average age
  - Min: Minimum age
  - Max: Maximum age

- **Gauge: Average BMI**
  - Value: Average BMI
  - Min: Minimum BMI
  - Max: Maximum BMI

- **Gauge: Average Charges**
  - Value: Average charges
  - Min: Minimum charges
  - Max: Maximum charges

- **Text Field: Charges**
  - Individual medical costs billed by health insurance

- **Card: Sum of Charges**
- **Card: Count of Individuals**

- **Stacked Column Chart: Decades**
  - X-axis: Decade
  - Y-axis: Count of individuals
  - Legend: Decade

- **Stacked Column Chart: BMI Categories**
  - X-axis: BMI category
  - Y-axis: Count of BMI category
  - Legend: BMI category

- **Stacked Column Chart: Count of Children**
  - X-axis: Children
  - Y-axis: Count of children
  - Legend: Children

- **Stacked Column Chart: Regions**
  - X-axis: Region
  - Y-axis: Count of Region
  - Legend: Region

- **Donut Chart: Smokers**
  - Legend: Smoker
  - Values: Count of smoker

- **Donut Chart: Gender**
  - Legend: Sex
  - Values: Count of sex
