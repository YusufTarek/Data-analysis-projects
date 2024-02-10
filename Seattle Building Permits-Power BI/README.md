# Seattle Building Permits Power BI Project

## Dataset
Explore and analyze building permits issued or in progress within the city of Seattle, Washington State. The dataset, sourced from [Kaggle](https://www.kaggle.com/datasets/city-of-seattle/seattle-building-permits), provides detailed information on permits, including permit number, value, type, applied date, permit class, status, and more.

## Power BI dashboard
- **File:** [Construction permits.pbix](https://drive.google.com/file/d/1vvRBCsdTKLlyn3ZJRkEP2H8B83iD0_ds/view?usp=drive_link)
- **Title:** Seattle Building Permits Analysis - Power BI Project

#### Description
Dive into the intricacies of Seattle's building permits landscape with this Power BI project. The associated .pbix file encapsulates a comprehensive analysis, offering interactive visualizations, charts, and maps. Gain valuable insights into permit trends, values, types, and more. Whether you're a data enthusiast, urban planner, or researcher, this Power BI analysis provides a profound perspective on Seattle's building permit ecosystem. Explore dynamic charts, filter data dynamically, and uncover patterns to inform strategic decisions related to construction activities.

---

### Columns Description
- **PermitNum:** Tracking number in SDCI's system.
- **Value:** Fair market value of the proposed work.
- **Permit Type:** Type of activity covered by the permit.
- **AppliedDate:** Date of the complete submittal.
- **PermitClass:** Type of project.
- **StatusCurrent:** Current status in the application/review/inspection life cycle.
- **PermitClassMapped:** Description of whether the permit is for a residential or non-residential project.
- **PermitTypeMapped:** Type of permit issued or in progress.
- **Work Type:** Complexity indicator of the proposed project.
- **PermitTypeDesc:** Additional information about the type of permit.
- **Action Type:** Subclassification for the type of work proposed.

## Data Transformations
- Transformed 'Action Type' column to capitalize each word in the 'building-permits-current' sheet.
- Created a new column 'WeekDay' in the 'building-permits' sheet to contain the names of the weekdays.
  - **DAX Formula:** `WeekDay = Date.DayOfWeekName([AppliedDate])`


## Visualizations

### Overview
- **Count of Permit Numbers**
- **Total Permits Value**
- **Average Permits Value**
- **Maximum Permits Value**

### Slicers
- **Permit Type**
- **Permit Class (Filter: Not Blank or N/A)**
- **Application Date (Filter: Year >= 2002)**
- **Permit Status (Filter: Not Blank)**

### Line Chart
- **Application Date by Year, Month, Day (Drill Down)**
  - X-axis: Application date (Year, Month, Day)
  - Y-axis: Count of application date

### Stacked Bar Chart (Weekdays)
- X-axis: Count of WeekDay
- Y-axis: WeekDay
- Legend: WeekDay

### Map
- **Location:** Location

### Stacked Column Charts
- **Permit Class**
- **Permit Class Mapped (Filter: Not Blank or N/A)**
- **Permit Type Mapped (Filter: Not Blank or N/A)**
- **Work Type**
- **Permit Type Description (Filter: >= 600)**
- **Action Type (Filter: >= 300)**

### Funnel Chart
- **Category:** Permit Status
- **Values:** Count of Permit Status
- **Filter:** >= 2900 & Permit Class is not blank, N/A, or Vacant Land

### Donut Chart
- **Legend:** Permit Type
- **Values:** Count of Permit Type

## Formatting
- View: Themes, "Executive"
- Custom format for each visual: Light background, shadow, and visual border

Feel free to explore the dataset and visualize building permit insights using Power BI. For detailed instructions and formatting, refer to this repository.
