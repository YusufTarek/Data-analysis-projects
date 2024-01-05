# Excel Data Analysis Project: Bike Buyers

## Project Overview

This Excel data analysis project focuses on bike buyers, implementing a series of steps to organize and visualize key insights. The goal is to facilitate a better understanding of buyer demographics, purchasing behavior, and other relevant factors.

## Steps Involved

1. **Working Sheet Creation:**
   - Created a new sheet named "Working Sheet."
   - Copied all cells from the "bike_buyers" sheet to the "Working Sheet."

2. **Data Cleaning:**
   - Removed duplicates within the "Working Sheet."
   - Replaced abbreviations in the "Gender" column (M & F) with (Male & Female).
   - Replaced abbreviations in the "Marital Status" column (M & S) with (Married & Single).

3. **Decade Range Calculation:**
   - Introduced a new column for "Decade" (age ranges).
   - Applied conditional IF statements for age ranges.
   - Utilized the CEILING function to calculate the decade for each age.

4. **Pivot Table Creation:**
   - Established a new sheet named "Pivot Table."
   - Created a pivot table with rows representing gender, columns for purchased bikes, and values showing the average income.
   - Inserted a clustered column chart to visually represent the data.

5. **Commute Distance Analysis:**
   - Developed another pivot table with rows representing commute distance, columns for purchased bikes, and values indicating the count of purchased bikes.
   - Manually sorted commute distances to enhance data clarity.

6. **Decade-Based Purchases:**
   - Formulated a third pivot table with rows representing decades, columns for purchased bikes, and values showing the count of purchased bikes.

7. **Dashboard Creation:**
   - Introduced a new sheet named "Dashboard."
   - Copied the charts from the "Pivot Table" sheet to the "Dashboard."
   - Implemented slicers for Marital Status, Region, Education, and Decade, providing a user-friendly interface for exploring key insights.

## Usage

1. Open the Excel workbook to explore detailed bike buyer analysis.
2. Navigate through sheets for specific analyses and visualizations.
3. Interact with the dashboard and slicers for dynamic exploration of bike buyer patterns.
