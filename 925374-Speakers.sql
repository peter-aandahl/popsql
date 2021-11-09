select l.language, c.population*l.percentage/100 as speakers from country_language l
join country c
on l.country_code = c.code
group by 1
order by 2;
-- This is a comment