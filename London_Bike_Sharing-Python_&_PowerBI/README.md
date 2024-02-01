## End-to-End Data Analyst Portfolio Project with Power BI Integration

This GitHub repository presents an end-to-end data analysis project focused on the "London Bike Sharing Dataset" from Kaggle. Starting with data gathering and preprocessing using Python and libraries like Pandas and Kaggle API, the project explores patterns and insights. The cleaned dataset is then seamlessly integrated into Power BI for interactive and dynamic visualizations. Power BI visualizations include line charts depicting bike ride trends over time, column charts showcasing the impact of seasons and weather on ride counts, and donut charts providing insights into holidays and weekends. Additional cards present aggregate statistics such as total bike rides, average temperature, humidity, and wind speed. The integration also introduces a matrix heatmap illustrating the correlation between real temperature, wind speed, and bike ride counts. Together, these visualizations offer a comprehensive overview of bike sharing patterns in London, combining the strengths of both Python and Power BI for a holistic data analysis portfolio project.

---

### Project Overview:

- **Data Gathering:**
  - The project starts with the installation of necessary libraries (`pandas`, `zipfile`, `kaggle`, `openpyxl`).
  - The Kaggle API is utilized to download the "London Bike Sharing Dataset."

- **Data Exploration and Transformation:**
  - Pandas is used to load the dataset, inspect basic information (`info()`, `shape`, `describe()`), and explore categorical variables.
  - Column names are updated for clarity.
  - Data cleaning and preprocessing include adjusting humidity percentages and mapping numerical codes to descriptive labels for seasons and weather conditions.

- **Data Visualization:**
  - The transformed dataset is exported to an Excel file (`London_bikes_exported.xlsx`) for further analysis or reporting.

### Prerequisites:
Ensure you have the required libraries installed:
```python
pip install pandas
pip install zipfile
pip install kaggle
!pip install openpyxl
```

### Usage:
1. Clone the repository.
2. Install the required libraries.
3. Run the provided Python script for data extraction and transformation.
4. Explore the exported Excel file for further insights.


---


## Power BI Integration

Extend your exploration of the "London Bike Sharing Dataset" beyond Python by leveraging Power BI for comprehensive data visualization. The following insights are derived from the dataset and presented through various Power BI visualizations.

### Line Chart:

- **X-axis:** Time (year, quarter, month, day)
- **Y-axis:** Sum of bike rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/a02d25d0-24ad-4cb3-b101-04730fbcf726)


### Slicer:

- Slice and dice data by time (year, quarter, month).

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/23d09ff6-9cd5-4899-91ff-ff7801bb240e)

### Column Chart:

- **X-axis:** Season
- **Y-axis:** Sum of bike rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/13a16266-fa8d-4f9d-bcba-485a88a7cd57)

### Column Chart:

- **X-axis:** Weather
- **Y-axis:** Sum of bike rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/32726a32-26c7-497c-a789-739f4983840b)

### Donut Chart:

- **Legend:** Is Holiday
- **Values:** Count of Is Holiday

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/07c26a85-5a5b-4597-b96d-657beffad196)


### Donut Chart:

- **Legend:** Is Weekend
- **Values:** Count of Is Weekend

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/d28cb93d-6e9c-4a6e-ad54-7d03c64eb9fe)


### Cards:

- **Total Bike Rides**
- **Average Temperature**
- **Average Humidity**
- **Average Wind Speed**

### Matrix (Heatmap):

- **Rows:** Real Temperature in Celsius (binned)
- **Columns:** Wind Speed in KPH (binned)
- **Values:** Sum of Bike Rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/5e68f39e-bc06-402e-b84f-9faaf0f2e2ad)


### Column Chart:

- **X-axis:** Hours (derived from the 'Time' column)
- **Y-axis:** Sum of Bike Rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/1dd6bb6f-460f-49ee-a6ea-28170e304584)


### Column Chart:

- **X-axis:** Time (month)
- **Y-axis:** Sum of Bike Rides

![image](https://github.com/YusufTarek/Data-analysis-projects/assets/49103469/e14fe281-f204-4eb8-a7c9-763cd6947dd5)


### Usage:

1. Ensure you have Power BI Desktop installed.
2. Open the provided Power BI file.
3. Explore the interactive visualizations.
4. Use slicers and filters to dynamically analyze the data.


---

Feel free to adapt, extend, customize, and showcase this project as a valuable addition to your data analyst portfolio. Whether you choose to enhance the Python analysis, further explore the Power BI visualizations, or tailor the project to meet specific requirements, this repository serves as a versatile foundation for demonstrating your data analysis skills.



