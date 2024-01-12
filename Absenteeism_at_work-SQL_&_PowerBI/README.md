# Absenteeism Analysis Project

## Project Description

This project involves a comprehensive analysis of absenteeism data from three sheets: Absenteeism_at_work, Reasons, and Compensation. The analysis includes data import, integration, SQL query optimization, and visualization in Power BI.

## Data Import and Integration

- Imported data from three sheets as flat files (CSV):
  - Absenteeism_at_work: 740 rows and 21 columns of data
  - Reasons: 29 rows and 2 columns
  - Compensation: 740 rows and 2 columns
- Conducted a left join operation to integrate the three tables.

## Healthiest Employee Recognition

Identified the healthiest individuals as:
- Non-drinkers
- Non-smokers
- BMI < 25
- Absence less than the average

  
## Compensation Optimization

- Calculated the compensation rate for non-smokers (686 employees) with a total budget of $983,221.
- Budget calculation: 8 hours/day, 5 days/week, 52 weeks/year ==> 2080 hours/year.
- Increased hourly rate: $0.68 per hour per employee ($1,414.4 per year).

## SQL Query Optimization

Implemented case statements for:
- BMI
- Season name

## Power BI Visualization

- Connected Power BI to the optimized SQL data.
- Copied and pasted the query from SQL.
- Loaded data into Power BI.

## Visualizations

- 5 donut charts:
  - BMI category vs. Absenteeism_time_in_hours
  - Social_smoker vs. Absenteeism_time_in_hours
  - Social_drinker vs. Absenteeism_time_in_hours
  - Season name vs. Absenteeism_time_in_hours
  - Decade vs. Absenteeism_time_in_hours
 
- 3 Cards for average:
  - Transportation expense
  - BMI
  - Age
- 2 cards for sum and average of Absenteeism_time_in_hours
- Card for count ofemployees


Feel free to explore the provided visualizations and metrics.

---

**Note**: Ensure compliance with data privacy and confidentiality regulations when working with real-world data.
