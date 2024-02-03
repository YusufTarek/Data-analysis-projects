# Product Sales Data Analysis - Power BI

## Overview

Businesses often grapple with managing extensive sales records. This Power BI project addresses this challenge by analyzing a company's sales data to reveal insights into product profitability, sales performance, and other key factors influencing overall business success. Utilizing Microsoft's sample dataset, this analysis involves connecting the dataset to Power BI Desktop, filtering irrelevant data, and creating dynamic dashboards using a variety of Power BI visualization types, including Pie Charts, Bar Charts, Doughnut Charts, and Funnel Charts.

---

## Power BI Steps

### Data Preparation

1. Try the sample dataset.
2. Load sample data.
3. Download the Financial sample Excel workbook.
4. Transform data by adjusting data types and cleaning.

### DAX Expression

- Create a new measure:  
  ```
  Total Units Sold = SUM(financials[Units Sold])
  ```

### Table Join

- Generate a Calendar table with dates between Jan 1, 2013, and Dec 31, 2014:
  ```
  Calendar = CALENDAR(DATE(2013,01,01), DATE(2014,12,31))
  ```

- Join the Date field from the financials table to the Date field in the Calendar table.

---

## Building the Report: Visualizations

### Executive Summary

1. Add a title: "Executive Summary – Finance Report."

2. **Profit by Date**
   - Create a line chart to visualize monthly profits.

3. **Profit by Country/Region**
   - Create a map to identify countries/regions with the highest profits.

4. **Sales by Product and Segment**
   - Create a clustered column chart to determine promising products and segments.

5. **Year Slicer**
   - Implement slicers to narrow down performance analysis for each month and year.

---

## Formatting the Report

1. Change the theme to Executive.

2. Adjust visualizations' titles, sizes, and shadows for better presentation.

3. Format the year slicer for improved user interaction.

---

Feel free to explore and adapt this Power BI project for your own business insights. Connect with the dataset, follow the steps, and visualize your sales data with compelling and insightful reports!
