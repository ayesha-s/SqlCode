select ID, Name as Competitorname,
--Sex,
case when Sex='M' then 'Male' else 'Female' end as Sex,
Age,
case when Age<18 then 'under 18' when Age between 18 and 25 then '18-25' when Age between 25 and 30 then '25-30' when Age>30 then 'over 30' end as Agegrouping,
Height, Weight, NOC as Nationcode, 
--Games, 
LEFT(Games, CHARINDEX(' ',Games)-1) as Year,
--RIGHT(Games, CHARINDEX(' ', REVERSE(Games))-1) As Season,
Sport, Event,
--Medal,
case when Medal='NA' then 'not registered' else Medal end as Medal
from
dbo.athletes_event_results
where RIGHT(Games, CHARINDEX(' ', REVERSE(Games))-1)='Summer'