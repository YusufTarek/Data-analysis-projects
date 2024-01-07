# SQL Server and Power BI Data Analysis Project

## Overview

This project involves data analysis using SQL Server Management Studio and Power BI to integrate, process, and visualize hotel revenue data from multiple tables. The dataset includes hotel information for the years 2018, 2019, and 2020, along with data on market segments and meal costs.

## SQL Server Processing

- **Data Import:** Imported data from various tables into Microsoft SQL Server Management Studio.
- **Table Information:** Tables include hotels data for the years 2018, 2019, 2020, and additional tables on market segments and meal costs.
- **Data Union:** Used 'union' to append tables from different years (2018, 2019, 2020) into a consolidated table, resulting in over 100,000 records and 36 columns.
- **Common Table Expression (CTE):** Created a CTE with the union of the three tables (2018, 2019, 2020) for simplified querying.
- **Revenue Calculation:** Calculated revenue by adding the sum of stays_in_weekend_nights and stays_in_week_nights, multiplying by the daily rate (adr), and rounding the result to two digits.
- **Grouping:** Selected columns (arrival_date_year, hotel) and grouped the data by arrival_date_year and hotel.
- **Left Join:** Performed a left join with two additional tables (market_segment, meal_cost).

### SQL Query Example:

```sql
-- Common Table Expression (CTE)
with hotels as(
    select * from dbo.['2018$']
    union
    select * from dbo.['2019$']
    union
    select * from dbo.['2020$']
)

-- Final Query with Left Join
select * from hotels h 
left join market_segment$ s on h.market_segment = s.market_segment
left join meal_cost$ c on h.meal = c.meal

```

# Power BI Data Analysis Project

## Overview

This Power BI project involves importing and analyzing data from SQL Server, aiming to derive meaningful insights and visualizations. Follow the steps below to recreate the analysis and explore the provided visuals.

## Getting Started

1. **Open Power BI:**
   - Launch Power BI on your computer.

2. **Import SQL Server Query:**
   - In Power BI, go to Home -> Get Data -> SQL Server.
   - Enter the Server name
   - Optionally, provide the Database name as "Project."
   - In Advanced options, choose SQL statement and paste your SQL query (copy it from SQL Server Management Studio).
   - Click "Transform data" to proceed.

3. **Data Transformation:**
   - Add a new column with a custom column named "Revenue."
   - Apply the following formula to calculate revenue:
     ```PowerQuery
     =([stays_in_weekend_nights] + [stays_in_week_nights]) * ([adr] * [Discount])
     ```
   - Convert the newly created column to the decimal data type.
   - Close and apply the transformations.

4. **Visualizations:**
   - Utilize the following visualizations to gain insights:
     - Card: Displaying the sum of revenue (formatted as currency).
     - Card: Showing the average daily rate (ADR) of revenue (formatted as currency).
     - Line chart: Depicting the reservation status date against the sum of revenue, with "hotel" as the category.
     - Card: Representing the average discount (formatted as a percentage).
     - Card: Displaying the sum of adults.
     - Card: Showing the sum of children.

5. **Additional Visual Elements:**
   - Line chart: Filter the data using a date filter to show records after 1/1/2018.
   - Slicers: Add two slicers for filtering data by Country and Hotel.
   - Donut chart: Visualize the sum of revenue by hotel.

