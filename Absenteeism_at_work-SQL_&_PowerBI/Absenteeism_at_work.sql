-- join the three tables
select *
from new.dbo.Absenteeism_at_work a
left join new.dbo.compensation c on a.ID = c.ID
left join new.dbo.Reasons r on a.Reason_for_absence = r.Number

-- Healthiest employees for the bonus
select * from new.dbo.Absenteeism_at_work
where Social_drinker = 0 and Social_smoker = 0 and Body_mass_index < 25 and 
Absenteeism_time_in_hours < (select AVG(Absenteeism_time_in_hours) from new.dbo.Absenteeism_at_work)

-- Compensation rate for (non-smokers: 686), 
-- budget: $983,221, 8*5*52 = 2080 hours in a year, 686*2080 = 1,426,880
-- increase per hour; budget($983,221) / total hours for all employees(1,426,880) = $0.68 increase per hour per employee ($1,414.4 per year)
select count(*) from new.dbo.Absenteeism_at_work [count of non-smokers]
where Social_smoker = 0

-- 
select a.ID, r.Reason, Month_of_absence, Day_of_the_week,
case when Month_of_absence in (12,1,2) then 'Winter'
when Month_of_absence in (3,4,5) then 'Spring'
when Month_of_absence in (6,7,8) then 'Summer'
when Month_of_absence in (9,10,11) then 'Fall'
else 'Unknown' end as 'Season name',

case when Body_mass_index < 18.5 then 'Under weight'
when Body_mass_index between 18.5 and 25 then 'Healthy weight'
when Body_mass_index between 25 and 30 then 'Overweight'
when Body_mass_index > 30 then 'Obese'
else 'Unknown' end as 'BMI Category'

from new.dbo.Absenteeism_at_work a
left join new.dbo.compensation c on a.ID = c.ID
left join new.dbo.Reasons r on a.Reason_for_absence = r.Number
