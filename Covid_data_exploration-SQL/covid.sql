
-- 1 Population vs location
select location [Country], population
from new.dbo.[covid-data]
where continent is not null
group by location, population
order by 2 desc


-- 2 Sum of total cases and total deaths by Countries
select location [Country], sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
and total_deaths is not null
group by location
order by 2 desc, 3 desc


-- 3 Sum of total cases and total deaths by continent
select continent, sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by 2 desc, 3 desc


-- 4 Total cases and total deaths by year
select year(date) Year, sum(cast(total_cases as float)) [Total cases], sum(cast(total_deaths as float)) [Total deaths]
from new.dbo.[covid-data]
where continent is not null
group by year(date)
order by 2 desc, 3 desc


-- 5 Total tests vs total cases and its percentage by country
select continent, sum(cast(total_tests as float)) [Total tests], sum(cast(total_cases as float)) [Total cases],  
round(sum(cast(total_cases as float)) / sum(cast(total_tests as float)) * 100, 3) [Percentage of cases]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by 4 desc


-- 6 Population denisty by location
select location, population_density
from new.dbo.[covid-data]
where population_density is not null
group by location, population_density
order by 2 desc


-- 7 Median age by location
select location, median_age
from new.dbo.[covid-data]
where median_age is not null
group by location, median_age
order by 2 desc


-- 8 Deaths vs male and female smokers by location
select location, sum(cast(total_deaths as float)) [Total deaths], male_smokers, female_smokers
from new.dbo.[covid-data]
where total_deaths is not null and male_smokers is not null and female_smokers is not null and continent is not null
group by location, male_smokers, female_smokers
order by 2 desc


---------------------------------------------------------------------------------------------------------------------------
-- 9 Total deaths vs population 
select location, date, total_cases, new_cases, total_deaths, population
from new.dbo.[covid-data]
order by location, date


-- 10 Total cases vs total deaths (liklihood of dying if you contract Covid in the United states)
select date, total_cases, total_deaths, round((cast(total_deaths as float)/cast(total_cases as float)) * 100, 2) [Death percentange]
from new.dbo.[covid-data]
where location like '%united states' and total_cases is not null and total_deaths is not null
order by [Death percentange] desc


-- 11 Total cases vs population (percentage of population got covid in USA)
select location, date, total_cases, 
round((cast(total_cases as float)/cast(population as float)) *100, 2) [Percentage of population infected]
from new.dbo.[covid-data]
where location like '%states' and total_cases is not null and population is not null and total_cases > 40000
order by [Percentage of population infected] desc, date desc


-- 12 Countries with highest infection rate compared to population
-- Data cleaning by removing null continent to make sure 'location' only has countries not continents
select location, population, max(cast(total_cases as float)) [Highest infection count], 
max(round((cast(total_cases as float)/cast(population as float)) *100 ,2)) [Percentage of population infected]
from new.dbo.[covid-data]
where continent is not null
group by location, population
order by [Percentage of population infected] desc


-- 13 Countries with highest death count
-- Data cleaning by removing null continent to make sure 'location' only has countries not continents
select location, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is not null
group by location
order by [Total death count] desc


-- 14 "Other than countries" with highest death count
select location, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is null
group by location
order by [Total death count] desc


-- 15 Continents with highest death count
select continent, max(cast(total_deaths as int)) [Total death count]
from new.dbo.[covid-data]
where continent is not null
group by continent
order by [Total death count] desc


-- 16 Death percentage by date
select date, sum(new_cases) [Total cases], sum(new_deaths) [Total deaths], 
round(sum(new_deaths)/sum(new_cases) * 100, 2) [Death percentage]
from new.dbo.[covid-data]
where new_cases > 0 and new_deaths > 0
group by date
order by date


-- 17 Total cases, total deaths, and death percentage
select sum(new_cases) [Total cases], sum(new_deaths) [Total deaths], 
round(sum(new_deaths)/sum(new_cases) * 100, 2) [Death percentage]
from new.dbo.[covid-data]
where new_cases > 0 and new_deaths > 0


-- 18 Rolling people vaccinated
select continent, location, date, population, new_vaccinations, 
sum(cast(new_vaccinations as float)) over (partition by location order by location, date) [Rolling people vaccinated]
from new.dbo.[covid-data]
where continent is not null and new_vaccinations is not null
order by 2, 3 -- location and date


-- 19 CTE to select 
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
