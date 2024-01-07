with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)

select * from hotels h 
left join market_segment$ s on h.market_segment = s.market_segment
left join meal_cost$ c on h.meal = c.meal
