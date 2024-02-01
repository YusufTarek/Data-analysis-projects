## End-to-End Data Analyst Portfolio Project

This GitHub repository showcases an end-to-end data analysis project focused on London bike sharing. From data gathering to visualization, this project employs Python and popular data science libraries to explore and analyze the "London Bike Sharing Dataset" from Kaggle.

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

Feel free to adapt and extend this project as part of your data analyst portfolio.

---

