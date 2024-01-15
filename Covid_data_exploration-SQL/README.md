# COVID-19 Data Analysis Project

## Overview

This project focuses on analyzing COVID-19 data, specifically exploring population statistics, infection rates, death counts, and vaccination trends across different locations and continents. The provided SQL queries extract key insights to understand the impact of the pandemic on a global scale.

## Queries and Analysis

### 1. Population vs Location
   - Retrieve the population and location data from the COVID-19 dataset, excluding null continents.
   - Group and order the results by population in descending order.


```sql
select location [Country], population
from new.dbo.[covid-data]
where continent is not null
group by location, population
order by 2 desc
```
### 2. Total Cases and Total Deaths by Countries:
   - Sum up total cases and total deaths for each country, excluding null continents.
   - Group and order the results by total cases and total deaths in descending order.
```sql
select location [Country], sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
and total_deaths is not null
group by location
order by 2 desc, 3 desc
```
### 3. Total Cases and Total Deaths by Continent:
   - Sum up total cases and total deaths for each continent, excluding null continents.
   - Group and order the results by total cases and total deaths in descending order.

```SQL
select continent, sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by 2 desc, 3 desc
```

### 4. Total Cases and Total Deaths by Year:
   - Sum up total cases and total deaths for each year, excluding null continents.
   - Group and order the results by total cases and total deaths in descending order.

```SQL
select year(date) Year, sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
group by year(date)
order by 2 desc, 3 desc
```

### 5. Total Tests vs Total Cases and Percentage by Country:
   - Calculate the percentage of total cases concerning total tests for each continent.
   - Group and order the results by the percentage of cases in descending order.

```SQL
select continent, sum(cast(total_tests as float)) [Total tests], sum(cast(total_cases as float)) [Total cases],  
round(sum(cast(total_cases as float)) / sum(cast(total_tests as float)) * 100, 3) [Percentage of cases]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by 4 desc
```

### 6. Population Density by Location:
   - Retrieve location and population density data, excluding null values.
   - Group and order the results by population density in descending order.

```SQL
select location, population_density
from new.dbo.[covid-data]
where population_density is not null
group by location, population_density
order by 2 desc
```

### 7. Median Age by Location:
   - Retrieve location and median age data, excluding null values.
   - Group and order the results by median age in descending order.


```SQL
select location, median_age
from new.dbo.[covid-data]
where median_age is not null
group by location, median_age
order by 2 desc
```

### 8. Deaths vs Male and Female Smokers by Location:
   - Sum up total deaths, male smokers, and female smokers for each location, excluding null continents.
   - Group and order the results by total deaths in descending order.

```SQL
select location, sum(cast(total_deaths as float)) [Total deaths], male_smokers, female_smokers
from new.dbo.[covid-data]
where total_deaths is not null and male_smokers is not null and female_smokers is not null and continent is not null
group by location, male_smokers, female_smokers
order by 2 desc
```

### 9. Total Deaths vs Population:
   - Retrieve data on total cases, new cases, total deaths, and population for each location.
   - Order the results by location and date.

```SQL
select location, date, total_cases, new_cases, total_deaths, population
from new.dbo.[covid-data]
order by location, date
```


### 10. Total Cases vs Total Deaths (Likelihood of Dying in the United States):
- Calculate the death percentage based on total cases and total deaths in the United States.
- Order the results by death percentage in descending order.

```SQL
select date, total_cases, total_deaths, round((cast(total_deaths as float)/cast(total_cases as float)) * 100, 2) [Death percentange]
from new.dbo.[covid-data]
where location like '%united states' and total_cases is not null and total_deaths is not null
order by [Death percentange] desc
```

### 11. Total Cases vs Population (Percentage of Population Infected in the USA):
- Calculate the percentage of the population infected by COVID-19 in the USA.
- Order the results by the percentage of population infected in descending order.

```SQL
select location, date, total_cases, 
round((cast(total_cases as float)/cast(population as float)) *100, 2) [Percentage of population infected]
from new.dbo.[covid-data]
where location like '%states' and total_cases is not null and population is not null and total_cases > 40000
order by [Percentage of population infected] desc, date desc
```

### 12. Countries with Highest Infection Rate Compared to Population:
- Identify countries with the highest infection rate compared to their population.
- Order the results by the percentage of population infected in descending order.

```SQl
select location, population, max(cast(total_cases as float)) [Highest infection count], 
max(round((cast(total_cases as float)/cast(population as float)) *100 ,2)) [Percentage of population infected]
from new.dbo.[covid-data]
where continent is not null
group by location, population
order by [Percentage of population infected] desc
```

### 13. Countries with Highest Death Count:
- Identify countries with the highest death count.
- Order the results by the total death count in descending order.


```SQl
select location, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is not null
group by location
order by [Total death count] desc
```

### 14. "Other than Countries" with Highest Death Count:
- Identify locations (excluding countries) with the highest death count.
- Order the results by the total death count in descending order.


```SQl
select location, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is null
group by location
order by [Total death count] desc
```

### 15. Continents with Highest Death Count:
- Identify continents with the highest death count.
- Order the results by the total death count in descending order.


```SQl
select continent, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by [Total death count] desc
```

### 16. Death Percentage by Date:
- Calculate the death percentage based on new cases and new deaths for each date.
- Order the results by date.


```SQl
select date, sum(new_cases) [Total cases], sum(new_deaths) [Total deaths], 
round(sum(new_deaths)/sum(new_cases) * 100, 2) [Death percentage]
from new.dbo.[covid-data]
where new_cases > 0 and new_deaths > 0
group by date
order by date
```

### 17. Total Cases, Total Deaths, and Death Percentage:
- Calculate the total cases, total deaths, and death percentage for the entire dataset.


```SQl
select sum(new_cases) [Total cases], sum(new_deaths) [Total deaths], 
round(sum(new_deaths)/sum(new_cases) * 100, 2) [Death percentage]
from new.dbo.[covid-data]
where new_cases > 0 and new_deaths > 0
```


### 18. Rolling People Vaccinated:
- Calculate the rolling total of people vaccinated for each location.
- Order the results by location and date.


```SQL
select continent, location, date, population, new_vaccinations, 
sum(cast(new_vaccinations as float)) over (partition by location order by location, date) [Rolling people vaccinated]
from new.dbo.[covid-data]
where continent is not null and new_vaccinations is not null
order by 2, 3 -- location and date
```

### 19. Percentage of People Vaccinated by Location:
- Use a Common Table Expression (CTE) to calculate the percentage of people vaccinated.
- Order the results by the percentage of people vaccinated in descending order.

```SQl
with population_vs_vaccination (continent, location, date, population, new_vaccinations, [Rolling people vaccinated]) as
(
select continent, location, date, population, new_vaccinations, 
sum(cast(new_vaccinations as float)) over (partition by location order by location, date) [Rolling people vaccinated]
from new.dbo.[covid-data]
where continent is not null and new_vaccinations is not null
)

select *, ([Rolling people vaccinated]/population) * 100 [Percentage of people vaccinated]
from population_vs_vaccination
order by [Percentage of people vaccinated] desc


```



## Usage

1. Execute each SQL query in your SQL Server Management Studio.
2. Explore the extracted insights and trends in the results.
3. Visualize the data for a more comprehensive understanding.

